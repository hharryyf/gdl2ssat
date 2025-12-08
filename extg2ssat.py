import sys 
from sasp2ssat import sasp2ssat

def base_encoding(name, path):
    f = open('encoding.lp', 'w')
    print('tdom(T+1) :- mtdom(T). tdom(1).', file=f)
    print('1 {' + f'does({name}, A, T) : input(xplayer, A)' + '} 1 :- mtdom(T), not terminated(T).', file=f)
    print('terminated(T) :- terminal(T).', file=f)
    print('terminated(T+1) :- terminated(T), mtdom(T).', file=f)
    print(':- does(R, A, T), not legal(R, A, T).', file=f)
    print(f':- not goal({name}, 100, T), terminated(T), not terminated(T-1).', file=f)
    f.close()

if len(sys.argv) != 4:
    print('Usage: python extg2ssat.py [player-name] [path to the extended ASP] [path to the output file]')
    exit(1)

name = sys.argv[1]
path = sys.argv[2]
outfile = sys.argv[3]

base_encoding(name, path)
