

role(xplayer).
role(oplayer).
role(random).

index(1).
index(2).
index(3).

init(control(xplayer)).

next(prev(M, N, x)) :- does(xplayer, mark(M, N)).

next(prev(M, N, o)) :- does(oplayer, mark(M, N)).

next(cell(M, N, x)) :- does(random, act(x, K)), true(prev(M, N, x)).

next(cell(M, N, o)) :- does(random, act(o, K)), true(prev(M, N, x)).

next(cell(M, N, o)) :- does(random, act(x, K)), true(prev(M, N, o)).

next(cell(M, N, x)) :- does(random, act(o, K)), true(prev(M, N, o)).

next(cell(M, N, W)) :- true(cell(M, N, W)).

next(prevplayer(oplayer)) :- true(control(oplayer)).

next(control(random)) :- true(control(oplayer)).

next(control(random)) :- true(control(xplayer)).

next(prevplayer(xplayer)) :- true(control(xplayer)).

next(control(xplayer)) :- true(control(random)), true(prevplayer(oplayer)).

next(control(oplayer)) :- true(control(random)), true(prevplayer(xplayer)).

open :- index(M), index(N), \+ true(cell(M, N, x)), \+ true(cell(M, N, o)).


legal(W, mark(X, Y)) :- true(control(W)), index(X), index(Y), W \= random, \+ true(cell(X, Y, x)), \+ true(cell(X, Y, o)).

legal(xplayer, noop) :- true(control(oplayer)).


legal(random, noop) :- true(control(oplayer)).

legal(random, noop) :- true(control(xplayer)).

legal(oplayer, noop) :- true(control(xplayer)).


legal(oplayer, noop) :- true(control(random)).

legal(xplayer, noop) :- true(control(random)).

legal(random, act(x, 1)) :- true(control(random)).


legal(random, act(o, 1)) :- true(control(random)).




goal(xplayer, 100) :- line(x).

goal(xplayer, 50) :- \+ line(x), \+ line(o), \+ open.

goal(xplayer, 0) :- line(o).

goal(oplayer, 100) :- line(o).

goal(oplayer, 50) :- \+ line(x), \+ line(o), \+ open.

goal(oplayer, 0) :- line(x).

terminal :- line(x).

terminal :- line(o).


terminal :- \+ open.

succ(1, 2).
succ(2, 3).


line(Player) :- true(cell(X1, Y, Player)), succ(X1, X2), succ(X2, X3),
                true(cell(X2, Y, Player)), true(cell(X3, Y, Player)).

line(Player) :- true(cell(X, Y1, Player)), succ(Y1, Y2), succ(Y2, Y3),
                true(cell(X, Y2, Player)), true(cell(X, Y3, Player)).

line(Player) :- true(cell(X1, Y1, Player)), succ(X1, X2), succ(X2, X3),
                true(cell(X2, Y2, Player)), true(cell(X3, Y3, Player)),
                succ(Y1, Y2), succ(Y2, Y3).


line(Player) :- true(cell(X1, Y3, Player)), succ(X1, X2), succ(X2, X3),
                true(cell(X2, Y2, Player)), true(cell(X3, Y1, Player)),
                succ(Y1, Y2), succ(Y2, Y3).
