import os
import re
import sys 
import clingo
from sasp2ssat import sasp2ssat
import queue

def get_random_action(name, path):
    moveL = set()
    randplayer = ''
    with open(path, "r") as g:
        ASP_program = g.read()
    ASP_program += f'#show.'
    ASP_program += f'#show input/2.'
    ASP_program += f'#show role/1.'
    # Control object is a low-level interface for controlling the grounding/solving process.
    ctl = clingo.Control(arguments=['-W', 'none'])  # Here you can write the arguments you would pass to clingo by command line.
    ctl.add("base", [], ASP_program)  # Adds the program to the control object.
    ctl.ground([("base", [])])  # Grounding...

    # Solving...
    result = []
    with ctl.solve(yield_=True) as solution_iterator:
        for model in solution_iterator:
            # Model is an instance of clingo.solving.Model class 
            # Reference: https://potassco.org/clingo/python-api/current/clingo/solving.html#clingo.solving.Model
            for s in str(model).split():
                result.append(s)
    result.sort(reverse=True)
    for s in result:
        if s[:5] == f'role(':
            match = re.match(r'role\((.*)\)', s)
            player = match.group(1) 
            if randplayer != '' and player != name and randplayer != player:
                print('ERROR: cannot handle games with more than one opponent!', file=sys.stderr)
                exit(1)
            if player != name:
                randplayer = player

        else:
            if s[:(len(randplayer) + 6)] == f'input({randplayer}':
                moveL.add(s[len(randplayer) + 7:-1])

    moveL = list(moveL)
    moveL.sort()

    return randplayer, moveL

def base_encoding(name, path):
    f = open('base_encoding.lp', 'w')
    print('tdom(T+1) :- mtdom(T). tdom(1).', file=f)
    print('1 {' + f'does({name}, A, T) : input(xplayer, A)' + '} 1 :- mtdom(T), not terminated(T).', file=f)
    print('terminated(T) :- terminal(T).', file=f)
    print('terminated(T+1) :- terminated(T), mtdom(T).', file=f)
    print(':- does(R, A, T), not legal(R, A, T).', file=f)
    print(':- 0 {terminated(T) : tdom(T)} 0.', file=f)
    print(f':- not goal({name}, 100, T), terminated(T), not terminated(T-1).', file=f)
    print(file=f)
    randplayer, moveL = get_random_action(name, path)
    # set an order for the random player's action
    if randplayer == '':
        print('The game is a single-player determinstic game!')
        cmd = f'clingo {path} base_encoding.lp'
        os.system(f"bash -c '{cmd}'")
        exit(0)
    f.close()

    return randplayer, moveL

def model_random(name, randp, moveL):
    tol = len(moveL)
    f = open('encoding_random.lp', 'w')
    print(f'front({moveL[0]}). back({moveL[-1]}).', file=f)
    for i in range(1, len(moveL)):
        print(f'actord({moveL[i-1]}, {moveL[i]}).', file=f)
    print(file=f)
    print(f'ordom(1..{tol}).', file=f)
    print(f'legal_id(A, 0, T) :- front(A), not legal({randp}, A, T), mtdom(T).', file=f)
    print(f'legal_id(A, 1, T) :- front(A), legal({randp}, A, T), mtdom(T).', file=f)
    print(f'legal_id(B, N, T) :- actord(A, B), legal({randp}, B, T), legal_id(A, N-1, T), ordom(N).', file=f)
    print(f'legal_id(B, N, T) :- actord(A, B), not legal({randp}, B, T), legal_id(A, N, T), ordom(N).', file=f)
    print(f'tol_act(N, T) :- legal_id(A, N, T), back(A).', file=f)
    print(file=f)
    # the probablistic variable (1/i,(i-1)/i)  for the random player
    for i in range(2, tol + 1):
        print('{moveL(' + f'{randp}, {i}, T)' +'} :- mtdom(T).', file=f)
    
    for i in range(1, tol + 1):
        if i == 1:
            print(f'does({randp}, A, T) :- tol_act(1, T), not terminated(T), legal({randp}, A, T), legal_id(A, 1, T).', file=f)
        else:
            for j in range(i, 0, -1):
                print(f'does({randp}, A, T) :- tol_act({i}, T), legal({randp}, A, T), legal_id(A, {j}, T), not terminated(T), mtdom(T)', end='', file=f)
                for k in range(i, j, -1):
                    print(f', not moveL({randp}, {k}, T)', file=f, end='')
                if j != 1:
                    print(f', moveL({randp}, {j}, T).', file=f)
                else:
                    print('.', file=f)
    print(file=f)
    print('% Basic quantifiers', file=f)
    print(f'_chance(T * 2, 1, I, moveL({randp}, I, T)) :- mtdom(T), ordom(I), I > 1.', file=f)
    print(f'_exists(T * 2 - 1, does({name}, A, T)) :- mtdom(T), input({name}, A).', file=f)

    f.close()

# TODO: quantifier shifting
def quantifier_shifting(filelist):
    cmd = f'clingo --output=smodels {' '.join(filelist)} > encoding_smodels.txt'
    os.system(f"bash -c '{cmd}'")
    f = open('encoding_smodels.txt', 'r')
    outfile = open('quantification.lp', 'w')
    # construct the dependency graph
    edge = {}
    id2name = {}
    name2id = {}
    state = 0
    quantlevel = {}
    visited = set()
    quantified = set()
    for line in f:
        line = line.strip()
        if line == '0':
            state += 1
            continue 
        if state == 0:
            line = list(map(int, line.split()))
            # normal rule
            # head number_of_lit number_of_neg_lit [negative lit] [positive lit]
            if line[0] == 1:
                head = line[1]
                for i in range(4, len(line)):
                    if line[i] not in edge:
                        edge[line[i]] = set()
                    edge[line[i]].add(head)
            # head number_of_lit number_of_neg_lit bound [negative lit] [positive lit]
            elif line[0] == 2:
                head = line[1]
                for i in range(5, len(line)):
                    if line[i] not in edge:
                        edge[line[i]] = set()
                    edge[line[i]].add(head)
            # number_of_head [head] number_of_lit number_of_neg_lit [negative lit] [positive lit]
            elif line[0] == 3:
                head_num = line[1]
                head = []
                for i in range(2, head_num + 2):
                    head.append(line[i])
                    # this part can be optimized
                    for i in range(head_num + 4, len(line)):
                        if line[i] not in edge:
                            edge[line[i]] = set()
                        for h in head:
                            edge[line[i]].add(h)
            else:
                print('Cannot handle rule of type 4+ in Clingo!')
                exit(1)
        elif state == 1:
            # here we process the atoms
            # Aim: associate each atom with its id in the smodels, and
            # 2) memorize the level order of the quantifiers
            line = line.split()
            id = int(line[0])
            name = line[1]
            id2name[id] = name 
            name2id[name] = id 
            if name[:8] == '_exists(':
                match = re.match(r'_exists\((\d+),(.*)\)', name)  
                lv = int(match.group(1))
                quantified.add(match.group(2))
                if lv not in quantlevel:
                    quantlevel[lv] = set()
                quantlevel[lv].add(('e', match.group(2)))  
            elif name[:8] == '_forall(':
                match = re.match(r'_forall\((\d+),(.*)\)', name)  
                lv = int(match.group(1))
                quantified.add(match.group(2))
                if lv not in quantlevel:
                    quantlevel[lv] = set()
                quantlevel[lv].add(('a', match.group(2)))         
            elif name[:8] == '_chance(':
                match = re.match(r'_chance\((\d+),(\d+),(\d+),(.*)\)', name)  
                lv = int(match.group(1))
                quantified.add(match.group(4))
                if lv not in quantlevel:
                    quantlevel[lv] = set()
                quantlevel[lv].add(('c', match.group(4)))


    def bfs(v, depth):
        q = queue.Queue()
        q.put(v)
        while q.empty() == False:
            curr = q.get()
            if curr in visited:
                continue
            if curr in id2name:
                atm = id2name[curr]
                if atm not in quantified:
                    print(f'_exists({depth},{atm}).', file=outfile)
            visited.add(curr)

            if curr in edge:
                for nxt in edge[curr]:
                    if nxt not in visited:
                        q.put(nxt)
    
    level_list = list(quantlevel)
    level_list.sort(reverse=True)
    for lv in level_list:
        for tp, atom in quantlevel[lv]:
            if atom in name2id and name2id[atom] not in visited:
                if tp == 'e':
                    bfs(name2id[atom], lv)
                else:
                    bfs(name2id[atom], lv + 1)
    for id in id2name:
        if id not in visited:
            print(f'_exists(0, {id2name[id]}).', file=outfile)
    outfile.close()
    f.close()

if __name__ == '__main__':
    if len(sys.argv) != 4:
        print('Usage: python extg2ssat.py [player-name] [path to the extended ASP] [path to the output file]', file=sys.stderr)
        exit(1)

    name = sys.argv[1]
    path = sys.argv[2]
    outfile = sys.argv[3]

    randp, moveL = base_encoding(name, path)
    model_random(name, randp, moveL)
    quantifier_shifting(['base_encoding.lp', 'encoding_random.lp', path])
    sasp2ssat(['base_encoding.lp', 'encoding_random.lp', 'quantification.lp', path], outfile)
