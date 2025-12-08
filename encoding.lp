tdom(T+1) :- mtdom(T).
tdom(1).

1 {does(xplayer, A, T) : input(xplayer, A)} 1 :- mtdom(T), not terminated(T).
terminated(T) :- terminal(T).
terminated(T+1) :- terminated(T), mtdom(T).

{moveL(random, 1, 3, T)} :- mtdom(T).
{moveL(random, 1, 2, T)} :- mtdom(T).

act_ord(paper, scissors). act_ord(scissors, rock).
front(paper). back(rock).
dom(0..2).

real_act(A, 0, T) :- front(A), not legal(random, A, T), mtdom(T).
real_act(A, 1, T) :- front(A), legal(random, A, T).
real_act(B, N + 1, T) :- act_ord(A, B), legal(random, B, T), real_act(A, N, T), dom(N).
real_act(B, N, T) :- act_ord(A, B), not legal(random, B, T), real_act(A, N, T).
tol_act(N, T) :- real_act(A, N, T), back(A).

_chance(2, 1, 3, moveL(random, 1, 3, 1)).
_chance(2, 1, 2, moveL(random, 1, 2, 1)).
_exists(T, does(xplayer, A, T)) :- mtdom(T), input(xplayer, A).

:- does(R, A, T), not legal(R, A, T).

does(random, A, T) :- real_act(A, 1, T), tol_act(3, T), moveL(random, 1, 3, T), not terminated(T), mtdom(T).
does(random, A, T) :- real_act(A, 2, T), tol_act(3, T), not moveL(random, 1, 3, T), moveL(random, 1, 2, T), not terminated(T), mtdom(T).
does(random, A, T) :- real_act(A, 3, T), tol_act(3, T), not moveL(random, 1, 3, T), not moveL(random, 1, 2, T), not terminated(T), mtdom(T).

does(random, A, T) :- real_act(A, 1, T), tol_act(2, T), moveL(random, 1, 2, T), not terminated(T), mtdom(T).
does(random, A, T) :- real_act(A, 2, T), tol_act(2, T), not moveL(random, 1, 2, T), not terminated(T), mtdom(T).

does(random, A, T) :- real_act(A, 1, T), tol_act(1, T), not terminated(T), mtdom(T).

:- not goal(xplayer, 100, T), terminated(T), not terminated(T-1).
