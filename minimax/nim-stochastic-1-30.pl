role(xplayer).
role(oplayer).
role(random).

init(heap(X,Y)) :- height(X,Y).
init(control(xplayer)).
init(phase(player)).
init(round(0)).

legal(xplayer, noop) :- true(control(oplayer)).

legal(xplayer, noop) :- true(phase(random)).


legal(oplayer, noop) :- true(control(xplayer)).

legal(oplayer, noop) :- true(phase(random)).

legal(P, noop) :- true(control(O)), role(O), role(P), P \= O.

legal(random, add(X, 1)) :- pile(X), true(phase(random)).

legal(random, noop).

legal(P, reduce(X, 1)) :- true(heap(X, M)), true(control(P)), true(phase(player)), small(0, M).


legal(P, reduce(X, 2)) :- true(heap(X, M)), true(control(P)), true(phase(player)), small(1, M).

next(round(X)) :- true(round(X)), true(phase(player)).

next(round(X)) :- true(round(X)), true(phase(random)), true(control(xplayer)).

next(round(Y)) :- true(round(X)), true(phase(random)), true(control(oplayer)), succ(X, Y).

next(phase(player)) :- true(phase(random)).

next(phase(random)) :- true(phase(player)).

next(control(P)) :- true(control(P)), true(phase(player)).

next(control(Q)) :- true(control(P)), true(phase(random)), nextplayer(P, Q).

next(heap(X, M)) :- does(P, reduce(X, 1)), true(heap(X, N)), succ(M, N).

next(heap(X, M)) :- does(P, reduce(X, 2)), true(heap(X, N)), succ(M, Z), succ(Z, N).

next(heap(X, M)) :- does(random, add(X, 1)), true(heap(X, N)), succ(N, M).

next(heap(X, N)) :- does(random, add(Y, 1)), true(heap(X, N)), X \= Y.

next(heap(X, N)) :- does(random, noop), true(phase(random)), true(heap(X, N)).

next(heap(X, N)) :- does(P, reduce(Y, K)), true(heap(X, N)), X \= Y.

open :- true(heap(X, P)), small(0, P).

terminal :- \+ open.

goal(P, 100) :- true(control(P)).

goal(P, 0) :- true(control(P1)), nextplayer(P, P1).


nextplayer(xplayer, oplayer).
nextplayer(oplayer, xplayer).

pile(a).


terminal :- true(round(30)).

height(a, 30).

small(A, B) :- succ(A, C), small(C, B).

small(A, B) :- succ(A, B).

succ(0,1).
succ(1,2).
succ(2,3).
succ(3,4).
succ(4,5).
succ(5,6).
succ(6,7).
succ(7,8).
succ(8,9).
succ(9,10).
succ(10,11).
succ(11,12).
succ(12,13).
succ(13,14).
succ(14,15).
succ(15,16).
succ(16,17).
succ(17,18).
succ(18,19).
succ(19,20).
succ(20,21).
succ(21,22).
succ(22,23).
succ(23,24).
succ(24,25).
succ(25,26).
succ(26,27).
succ(27,28).
succ(28,29).
succ(29,30).
