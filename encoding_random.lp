front(paper). back(scissors).
actord(paper, rock).
actord(rock, scissors).

ordom(1..3).
legal_id(A, 0, T) :- front(A), not legal(random, A, T), mtdom(T).
legal_id(A, 1, T) :- front(A), legal(random, A, T), mtdom(T).
legal_id(B, N, T) :- actord(A, B), legal(random, B, T), legal_id(A, N-1, T), ordom(N).
legal_id(B, N, T) :- actord(A, B), not legal(random, B, T), legal_id(A, N, T), ordom(N).
tol_act(N, T) :- legal_id(A, N, T), back(A).

{moveL(random, 2, T)} :- mtdom(T).
{moveL(random, 3, T)} :- mtdom(T).
does(random, A, T) :- tol_act(1, T), not terminated(T), legal(random, A, T), legal_id(A, 1, T).
does(random, A, T) :- tol_act(2, T), legal(random, A, T), legal_id(A, 2, T), not terminated(T), mtdom(T), moveL(random, 2, T).
does(random, A, T) :- tol_act(2, T), legal(random, A, T), legal_id(A, 1, T), not terminated(T), mtdom(T), not moveL(random, 2, T).
does(random, A, T) :- tol_act(3, T), legal(random, A, T), legal_id(A, 3, T), not terminated(T), mtdom(T), moveL(random, 3, T).
does(random, A, T) :- tol_act(3, T), legal(random, A, T), legal_id(A, 2, T), not terminated(T), mtdom(T), not moveL(random, 3, T), moveL(random, 2, T).
does(random, A, T) :- tol_act(3, T), legal(random, A, T), legal_id(A, 1, T), not terminated(T), mtdom(T), not moveL(random, 3, T), not moveL(random, 2, T).

% Basic quantifiers
_chance(T * 2, 1, I, moveL(random, I, T)) :- mtdom(T), ordom(I), I > 1.
_exists(T * 2 - 1, does(xplayer, A, T)) :- mtdom(T), input(xplayer, A).
