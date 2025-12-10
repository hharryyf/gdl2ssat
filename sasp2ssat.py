# a converter from sasp to ssat
# Usage: python sqasp2ssat.py [list of clingo files that specifies the sasp]
# sasp extends normal logic ASP with existential and change quantifiers
# _exists, _chance, and _forall are three preserved keywords
# _exists(i, at) means atom at is quantified existentially at level i (i > 0)
# _forall(i, at) means atom at is quantified universally at level i (i > 0)
# _chance(i, p, q, at) means atom at is quantified at level i (i > 0) and
# has a probablisty of p/q of being true

# The translation first converts the ASP to ground program of smodels representation
# Then, it converts the smodels program to SAT using the toolchain ASP -> lp2normal2 -> lp2acyc -> lp2sat
# Finally, it adds back the quantifiers that appears in the ASP ground program
# Edge cases: 1) If a chance atom at does not appear in the ground atoms
# A unit clause -at must must be added to the matrix of the SSAT
#             2) If a universal atom at does not appear in the ground atoms
# The formula is directly UNSAT 

import sys 
import os
import re        

def sasp2ssat(filelist, outfile=''):
    if outfile == '':
        outfile = sys.stdout
    else:
        outfile = open(outfile, 'w')
    filelist = ' '.join(filelist)
    cmd = f'clingo --output=smodels {filelist} | lp2normal2 | lp2lp2 | lp2acyc| lp2sat > temp.dimacs'
    os.system(f"bash -c '{cmd}'")
    
    f = open('temp.dimacs', 'r')
    var, tol_var, clause = 0, 0, 0
    name2id = {}
    id2name = {}
    quant = []
    quantify = set()
    names = set()
    id = -1
    for line in f:
        line = line.strip().split()
        if len(line) == 0:
            continue
        if line[0] == 'p':
            # header line, number of vars and number of clauses
            var, clause = int(line[2]), int(line[3])
            tol_var = var
        elif line[0] == 'c':
            # comment line
            id = int(line[1])
            id2name[id] = line[2]
            name2id[line[2]] = id
    f.close()

    for item in name2id.items():
        if item[0][:8] == '_exists(':
            match = re.match(r'_exists\((\d+),(.*)\)', item[0])  
            level = int(match.group(1))
            quant.append((-1, 'e', item[1]))
            quantify.add(item[1])
            if match.group(2) in name2id:
                quant.append((level, 'e', name2id[match.group(2)]))
                quantify.add(name2id[match.group(2)])
                if match.group(2) in names:
                    print(f'ERROR, {match.group(2)} quantified twice!', file=sys.stderr)
                    exit(1)
                names.add(match.group(2))
        elif item[0][:8] == '_forall(':
            match = re.match(r'_forall\((\d+),(.*)\)', item[0])  
            level = int(match.group(1))
            quant.append((-1, 'e', item[1]))
            quantify.add(item[1])
            if match.group(2) in name2id:
                quant.append((level, 'a', name2id[match.group(2)]))
                quantify.add(name2id[match.group(2)])
                if match.group(2) in names:
                    print(f'ERROR, {match.group(2)} quantified twice!', file=sys.stderr)
                    exit(1)
                names.add(match.group(2))
            else:
                print(f'Universal Unit Literal! Automatically UNSAT', file=sys.stderr)
                exit(0)
        elif item[0][:8] == '_chance(':
            match = re.match(r'_chance\((\d+),(\d+),(\d+),(.*)\)', item[0])  
            level = int(match.group(1))
            quant.append((-1, 'e', item[1]))
            quantify.add(item[1])
            if int(match.group(2)) > int(match.group(3)) or int(match.group(2)) < 0 or int(match.group(3)) <= 0:
                print('ERROR: Invalid probability, must be of the form p/q and p >= 0 && q > 0', file=sys.stderr)
                exit(1)
            if match.group(4) in names:
                print(f'ERROR, {match.group(4)} quantified twice!', file=sys.stderr)
                exit(1)
            names.add(match.group(4))
            prob = (1.0 * int(match.group(2))) / (1.0 * int(match.group(3)))
            if match.group(4) in name2id:
                quant.append((level, 'c', name2id[match.group(4)], prob))
                quantify.add(name2id[match.group(4)])
            else:
                quant.append((level, 'c', tol_var + 1, prob))
                tol_var += 1
    
    for name in name2id:
        if name not in names and name[:8] != '_exists(' and name[:8] != '_chance(' and name[:8] != '_forall(':
            print(f'Warning: atom {name} not quantified', file=sys.stderr)

    quant.sort()

    mxlevel = 0
    if len(quant) != 0:
        mxlevel = quant[-1][0]
        
    for i in range(1, var + 1):
        if i not in quantify:
            quant.append((mxlevel + 1, 'e', i))

    print(f'p cnf {tol_var} {clause + tol_var - var}', file=outfile)

    for i in range(len(quant)):
        quantype = quant[i][1]
        if quantype == 'e' or quantype == 'a':
            if i != 0 and quant[i-1][1] != 'c' and quant[i-1][1] != quant[i][1]:
                print(f' 0', file=outfile)
            if i == 0 or quant[i-1][1] != quant[i][1]:
                print(f'{quantype} {quant[i][2]}', end='', file=outfile)
            else:
                print(f' {quant[i][2]}', end='', file=outfile)
            if i == len(quant) - 1:
                print(' 0', file=outfile)
        elif quantype == 'c':
            if i != 0 and quant[i-1][1] != 'c':
                print(f' 0', file=outfile)
            print(f'r {round(quant[i][3], 9)} {quant[i][2]} 0', file=outfile)
        
    for i in range(var + 1, 1 + tol_var):
        print(-i, '0', file=outfile)
    
    f = open('temp.dimacs', 'r')
    for line in f:
        li = line.strip().split()
        if len(li) != 0 and li[0] != 'p' and li[0] != 'c':
            print(line, end='', file=outfile)
    f.close()
    outfile.close()

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: python sqasp2ssat.py [a non-empty list of asp files that specifies the sasp]", file=sys.stderr)
        exit(1)
    
    sasp2ssat(sys.argv[1:])
