import os
import re
import sys 
import clingo
from sasp2ssat import sasp2ssat

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
    print(f'legal_id(B, N, T) :- actord(A, B), legal(random, B, T), legal_id(A, N-1, T), ordom(N).', file=f)
    print(f'legal_id(B, N, T) :- actord(A, B), not legal(random, B, T), legal_id(A, N, T), ordom(N).', file=f)
    print(f'tol_act(N, T) :- legal_id(A, N, T), back(A).', file=f)
    print(file=f)
    # the probablistic variable (1/i,(i-1)/i)  for the random player
    for i in range(2, tol + 1):
        print('{moveL(' + f'{randp}, {i}, T)' +'} :- mtdom(T).', file=f)
    
    for i in range(1, tol + 1):
        if i == 1:
            print(f'does({randp}, A, T) :- tol_act(1, T), not terminated(T), legal_id(A, 1, T).', file=f)
        else:
            for j in range(i, 0, -1):
                print(f'does({randp}, A, T) :- tol_act({i}, T), legal_id(A, {j}, T),  not terminated(T), mtdom(T)', end='', file=f)
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
    

if __name__ == '__main__':
    if len(sys.argv) != 4:
        print('Usage: python extg2ssat.py [player-name] [path to the extended ASP] [path to the output file]', file=sys.stderr)
        exit(1)

    name = sys.argv[1]
    path = sys.argv[2]
    outfile = sys.argv[3]

    randp, moveL = base_encoding(name, path)
    model_random(name, randp, moveL)
    # TODO: quantifier shifting
    sasp2ssat(['base_encoding.lp', 'encoding_random.lp', path], outfile)
