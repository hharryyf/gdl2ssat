import os
import re
import sys 
import clingo
from sasp2ssat import sasp2ssat
from turn import get_o_noop
import queue

def get_player_action(player, path):
    moveR = set()
    with open(path, "r") as g:
        ASP_program = g.read()
    ASP_program += f'#show.'
    ASP_program += f'#show input/2.'
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
        if s[:(len(player) + 6)] == f'input({player}':
            moveR.add(s[len(player) + 7:-1])

    moveR = list(moveR)
    moveR.sort()

    return moveR

def base_encoding(name):
    f = open('base_encoding.lp', 'w')
    print('tdom(T+1) :- mtdom(T). tdom(1).', file=f)
    print('1 {' + f'does(R, A, T) : input(R, A)' + '} 1 :- role(R), mtdom(T), not terminated(T).', file=f)
    print('terminated(T) :- terminal(T).', file=f)
    print('terminated(T+1) :- terminated(T), mtdom(T).', file=f)
    print(':- does(R, A, T), not legal(R, A, T).', file=f)
    print(':- 0 {terminated(T) : tdom(T)} 0.', file=f)
    print(f':- not goal({name}, 100, T), terminated(T), not terminated(T-1).', file=f)
    print(f'_exists(T * 5 - 4, does({name}, A, T)) :- mtdom(T), input({name}, A).', file=f)
    print(file=f)
    f.close()
    
def model_random(randp, moveR, turns, horizon):
    tol = len(moveR)
    f = open('encoding_random.lp', 'w')
    print(f'front({moveR[0]}). back({moveR[-1]}).', file=f)
    for i in range(1, len(moveR)):
        print(f'actord({moveR[i-1]}, {moveR[i]}).', file=f)
    print(file=f)
    for i in range(1, horizon + 1):
        if i in turns:
            print(f'ordom(1..{turns[i][1]},{i}).', file=f)
        else:
            print(f'ordom(1..{tol},{i}).', file=f)
    #print(f'ordom(1..{tol}, T) :- mtdom(T).', file=f)
    print(f'legal_id(A, 0, T) :- front(A), not legal({randp}, A, T), mtdom(T).', file=f)
    print(f'legal_id(A, 1, T) :- front(A), legal({randp}, A, T), mtdom(T).', file=f)
    print(f'legal_id(B, N, T) :- actord(A, B), legal({randp}, B, T), legal_id(A, N-1, T), ordom(N, T).', file=f)
    print(f'legal_id(B, N, T) :- actord(A, B), not legal({randp}, B, T), legal_id(A, N, T).', file=f)
    print(f'tol_act(N, T) :- legal_id(A, N, T), back(A).', file=f)
    print(file=f)
    # the probablistic variable (1/i,(i-1)/i)  for the random player
    print('{moveR(' + f'{randp}, I, T)' +'} :- ordom(I, T), I > 1.', file=f)
    
    for time in range(1, horizon + 1):
        low = 2
        high = tol 
        if time in turns:
            low = max(turns[time][0], 2)
            high = turns[time][1]
        for i in range(low, high + 1):
            for j in range(i, 0, -1):
                print(f'does({randp}, A, {time}) :- tol_act({i}, {time}), legal({randp}, A, {time}), legal_id(A, {j}, {time}), not terminated({time})', end='', file=f)
                for k in range(i, j, -1):
                    print(f', not moveR({randp}, {k}, {time})', file=f, end='')
                if j != 1:
                    print(f', moveR({randp}, {j}, {time}).', file=f)
                else:
                    print('.', file=f)
    print(file=f)
    print('% Basic quantifiers', file=f)
    print(f'_chance(T * 5 - 1, 1, I, moveR({randp}, I, T)) :- mtdom(T), ordom(I, T), I > 1.', file=f)
    print(f'_exists(T * 5, does({randp}, A, T)) :- mtdom(T), input({randp}, A).', file=f)
    f.close()

def model_adverse(adv, moveL, turns, horizon):
    f = open('encoding_adverse.lp', 'w')
    tol, lenl = 0, len(moveL)
    while (1 << tol) < lenl:
        tol += 1

    print(f'ldom({adv}, 1..{tol}).', file=f)
    print('% log-encoding', file=f)


    for i in range(1, horizon + 1):
        if i not in turns:
            print(f"{{moveL({adv}, M, {i})}} :-  ldom({adv}, M).",file=f)
    
    for time in range(1, horizon + 1):
        if time not in turns:
            j = 0
            for i in range(0, 1 << tol):
                if j < len(moveL):
                    print(f'does({adv}, {moveL[j]}, {time}) :- ', end='', file=f)
                    for k in range(0, tol):
                        if ((i >> k) & 1) == 0:
                            print('not ', end='', file=f)
                        if k == tol - 1:
                            if i == 0:
                                print(f'moveL({adv}, {k+1}' + f', {time}), ' + f'legal({adv}, {moveL[j]}, {time}), not terminated({time}).', file=f)
                            else:
                                print(f'moveL({adv}, {k+1}' + f', {time}), ' + f'legal({adv}, {moveL[j]}, {time}), not terminated({time}).', file=f)
                        else:
                            print(f'moveL({adv}, {k+1}' + f', {time}), ', end='', file=f)
                
                j += 1
            
    print(file=f)
    for i in range(1, horizon + 1):
        if i not in turns:
            print(f'_forall({i} * 5 - 3, moveL({adv}, I, {i})) :- ldom({adv}, I).', file=f)
    
    print(f'_exists(T * 5 - 2, does({adv}, A, T)) :- mtdom(T), input({adv}, A).', file=f)
    
    f.close()

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
            if id2name[id][:8] != '_exists(' and id2name[id][:8] != '_forall(' and id2name[id][:8] != '_chance(':
                print(f'_exists(0, {id2name[id]}).', file=outfile)
    outfile.close()
    f.close()


def get_horizon(file):
    with open(file, "r") as g:
        ASP_program = g.read()
    ASP_program += f'#show.'
    ASP_program += f'#show mtdom/1.'
    # Control object is a low-level interface for controlling the grounding/solving process.
    ctl = clingo.Control(arguments=['-W', 'none'])  # Here you can write the arguments you would pass to clingo by command line.
    ctl.add("base", [], ASP_program)  # Adds the program to the control object.
    ctl.ground([("base", [])])  # Grounding...

    # Solving...
    horizon = 0
    with ctl.solve(yield_=True) as solution_iterator:
        for model in solution_iterator:
            # Model is an instance of clingo.solving.Model class 
            # Reference: https://potassco.org/clingo/python-api/current/clingo/solving.html#clingo.solving.Model
            for s in str(model).split():
                s = re.match(r'mtdom\((\d+)\)', s).group(1)
                horizon = max(horizon, int(s))
    
    return horizon

def get_randturn(turnfile, horizon):
    #print(turnfile, horizon)
    with open(turnfile, "r") as g:
        ASP_program = g.read()
    ASP_program += f'mtdom(1..{horizon}).'
    ASP_program += f'#show.'
    ASP_program += f'#show _randturn/3.'
    # Control object is a low-level interface for controlling the grounding/solving process.
    ctl = clingo.Control(arguments=['-W', 'none'])  # Here you can write the arguments you would pass to clingo by command line.
    ctl.add("base", [], ASP_program)  # Adds the program to the control object.
    ctl.ground([("base", [])])  # Grounding...

    # Solving...
    turns = {}
    with ctl.solve(yield_=True) as solution_iterator:
        for model in solution_iterator:
            # Model is an instance of clingo.solving.Model class 
            # Reference: https://potassco.org/clingo/python-api/current/clingo/solving.html#clingo.solving.Model
            for s in str(model).split():
                s = re.match(r'_randturn\((\d+),(\d+),(\d+)\)', s)
                low = int(s.group(1))
                high = int(s.group(2))
                time = int(s.group(3))
                turns[time] = (low,high)
    return turns


def get_advturn(turnfile, horizon):
    #print(turnfile, horizon)
    with open(turnfile, "r") as g:
        ASP_program = g.read()
    ASP_program += f'mtdom(1..{horizon}).'
    ASP_program += f'#show.'
    ASP_program += f'#show _advnoop/1.'
    # Control object is a low-level interface for controlling the grounding/solving process.
    ctl = clingo.Control(arguments=['-W', 'none'])  # Here you can write the arguments you would pass to clingo by command line.
    ctl.add("base", [], ASP_program)  # Adds the program to the control object.
    ctl.ground([("base", [])])  # Grounding...

    # Solving...
    turns = set()
    with ctl.solve(yield_=True) as solution_iterator:
        for model in solution_iterator:
            # Model is an instance of clingo.solving.Model class 
            # Reference: https://potassco.org/clingo/python-api/current/clingo/solving.html#clingo.solving.Model
            for s in str(model).split():
                s = re.match(r'_advnoop\((\d+)\)', s)
                low = int(s.group(1))
                turns.add(low)
    return turns




if __name__ == '__main__':
    if len(sys.argv) != 4:
        print('Usage: python extg2ssat.py [player-name,opponent-name,random-name] [path to the extended ASP] [path to the output file]', file=sys.stderr)
        exit(1)



    names = sys.argv[1].strip().split(',')
    name = names[0]
    randp = names[2]
    adverse = names[1]
    path = sys.argv[2]
    outfile = sys.argv[3]
    
    base_encoding(name)

    # single-player game
    if randp == '' and adverse == '':
        print('The game is a single-player determinstic game!')
        cmd = f'clingo {path} base_encoding.lp'
        os.system(f"bash -c '{cmd}'")
        exit(0)
    
    filelist = ['base_encoding.lp', path]

    horizon = get_horizon(path)

    if randp != '':
        turns = {}
        #if turnfile != '':
        #    turns = get_randturn(turnfile, horizon)
        candidate = get_o_noop(path, horizon, 2, randp)
        for v in candidate:
            turns[v[0]] = (v[1], v[1])
        moveR = get_player_action(randp, path)
        #print(turns)
        model_random(randp, moveR, turns, horizon)
        filelist.append('encoding_random.lp')
    
    if adverse != '':
        turns = set()
        #if turnfile != '':
        #    turns = get_advturn(turnfile, horizon)
        candidate = get_o_noop(path, horizon, 2, adverse)
        #print(candidate)
        for v in candidate:
            if v[1] == 1:
                turns.add(v[0])
            #turns[v[0]] = (v[1], v[1])
        moveL = get_player_action(adverse, path)
        model_adverse(adverse, moveL, turns, horizon)
        filelist.append('encoding_adverse.lp')


    quantifier_shifting(filelist)
    filelist.append('quantification.lp')
    sasp2ssat(filelist, outfile)
