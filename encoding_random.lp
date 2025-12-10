front(mark(1,1)). back(noop).
actord(mark(1,1), mark(1,2)).
actord(mark(1,2), mark(1,3)).
actord(mark(1,3), mark(2,1)).
actord(mark(2,1), mark(2,2)).
actord(mark(2,2), mark(2,3)).
actord(mark(2,3), mark(3,1)).
actord(mark(3,1), mark(3,2)).
actord(mark(3,2), mark(3,3)).
actord(mark(3,3), noop).

ordom(1..10).
legal_id(A, 0, T) :- front(A), not legal(oplayer, A, T), mtdom(T).
legal_id(A, 1, T) :- front(A), legal(oplayer, A, T), mtdom(T).
legal_id(B, N, T) :- actord(A, B), legal(oplayer, B, T), legal_id(A, N-1, T), ordom(N).
legal_id(B, N, T) :- actord(A, B), not legal(oplayer, B, T), legal_id(A, N, T), ordom(N).
tol_act(N, T) :- legal_id(A, N, T), back(A).

{moveL(oplayer, 2, T)} :- mtdom(T).
{moveL(oplayer, 3, T)} :- mtdom(T).
{moveL(oplayer, 4, T)} :- mtdom(T).
{moveL(oplayer, 5, T)} :- mtdom(T).
{moveL(oplayer, 6, T)} :- mtdom(T).
{moveL(oplayer, 7, T)} :- mtdom(T).
{moveL(oplayer, 8, T)} :- mtdom(T).
{moveL(oplayer, 9, T)} :- mtdom(T).
{moveL(oplayer, 10, T)} :- mtdom(T).
does(oplayer, A, T) :- tol_act(1, T), not terminated(T), legal(oplayer, A, T), legal_id(A, 1, T).
does(oplayer, A, T) :- tol_act(2, T), legal(oplayer, A, T), legal_id(A, 2, T), not terminated(T), mtdom(T), moveL(oplayer, 2, T).
does(oplayer, A, T) :- tol_act(2, T), legal(oplayer, A, T), legal_id(A, 1, T), not terminated(T), mtdom(T), not moveL(oplayer, 2, T).
does(oplayer, A, T) :- tol_act(3, T), legal(oplayer, A, T), legal_id(A, 3, T), not terminated(T), mtdom(T), moveL(oplayer, 3, T).
does(oplayer, A, T) :- tol_act(3, T), legal(oplayer, A, T), legal_id(A, 2, T), not terminated(T), mtdom(T), not moveL(oplayer, 3, T), moveL(oplayer, 2, T).
does(oplayer, A, T) :- tol_act(3, T), legal(oplayer, A, T), legal_id(A, 1, T), not terminated(T), mtdom(T), not moveL(oplayer, 3, T), not moveL(oplayer, 2, T).
does(oplayer, A, T) :- tol_act(4, T), legal(oplayer, A, T), legal_id(A, 4, T), not terminated(T), mtdom(T), moveL(oplayer, 4, T).
does(oplayer, A, T) :- tol_act(4, T), legal(oplayer, A, T), legal_id(A, 3, T), not terminated(T), mtdom(T), not moveL(oplayer, 4, T), moveL(oplayer, 3, T).
does(oplayer, A, T) :- tol_act(4, T), legal(oplayer, A, T), legal_id(A, 2, T), not terminated(T), mtdom(T), not moveL(oplayer, 4, T), not moveL(oplayer, 3, T), moveL(oplayer, 2, T).
does(oplayer, A, T) :- tol_act(4, T), legal(oplayer, A, T), legal_id(A, 1, T), not terminated(T), mtdom(T), not moveL(oplayer, 4, T), not moveL(oplayer, 3, T), not moveL(oplayer, 2, T).
does(oplayer, A, T) :- tol_act(5, T), legal(oplayer, A, T), legal_id(A, 5, T), not terminated(T), mtdom(T), moveL(oplayer, 5, T).
does(oplayer, A, T) :- tol_act(5, T), legal(oplayer, A, T), legal_id(A, 4, T), not terminated(T), mtdom(T), not moveL(oplayer, 5, T), moveL(oplayer, 4, T).
does(oplayer, A, T) :- tol_act(5, T), legal(oplayer, A, T), legal_id(A, 3, T), not terminated(T), mtdom(T), not moveL(oplayer, 5, T), not moveL(oplayer, 4, T), moveL(oplayer, 3, T).
does(oplayer, A, T) :- tol_act(5, T), legal(oplayer, A, T), legal_id(A, 2, T), not terminated(T), mtdom(T), not moveL(oplayer, 5, T), not moveL(oplayer, 4, T), not moveL(oplayer, 3, T), moveL(oplayer, 2, T).
does(oplayer, A, T) :- tol_act(5, T), legal(oplayer, A, T), legal_id(A, 1, T), not terminated(T), mtdom(T), not moveL(oplayer, 5, T), not moveL(oplayer, 4, T), not moveL(oplayer, 3, T), not moveL(oplayer, 2, T).
does(oplayer, A, T) :- tol_act(6, T), legal(oplayer, A, T), legal_id(A, 6, T), not terminated(T), mtdom(T), moveL(oplayer, 6, T).
does(oplayer, A, T) :- tol_act(6, T), legal(oplayer, A, T), legal_id(A, 5, T), not terminated(T), mtdom(T), not moveL(oplayer, 6, T), moveL(oplayer, 5, T).
does(oplayer, A, T) :- tol_act(6, T), legal(oplayer, A, T), legal_id(A, 4, T), not terminated(T), mtdom(T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), moveL(oplayer, 4, T).
does(oplayer, A, T) :- tol_act(6, T), legal(oplayer, A, T), legal_id(A, 3, T), not terminated(T), mtdom(T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), not moveL(oplayer, 4, T), moveL(oplayer, 3, T).
does(oplayer, A, T) :- tol_act(6, T), legal(oplayer, A, T), legal_id(A, 2, T), not terminated(T), mtdom(T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), not moveL(oplayer, 4, T), not moveL(oplayer, 3, T), moveL(oplayer, 2, T).
does(oplayer, A, T) :- tol_act(6, T), legal(oplayer, A, T), legal_id(A, 1, T), not terminated(T), mtdom(T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), not moveL(oplayer, 4, T), not moveL(oplayer, 3, T), not moveL(oplayer, 2, T).
does(oplayer, A, T) :- tol_act(7, T), legal(oplayer, A, T), legal_id(A, 7, T), not terminated(T), mtdom(T), moveL(oplayer, 7, T).
does(oplayer, A, T) :- tol_act(7, T), legal(oplayer, A, T), legal_id(A, 6, T), not terminated(T), mtdom(T), not moveL(oplayer, 7, T), moveL(oplayer, 6, T).
does(oplayer, A, T) :- tol_act(7, T), legal(oplayer, A, T), legal_id(A, 5, T), not terminated(T), mtdom(T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), moveL(oplayer, 5, T).
does(oplayer, A, T) :- tol_act(7, T), legal(oplayer, A, T), legal_id(A, 4, T), not terminated(T), mtdom(T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), moveL(oplayer, 4, T).
does(oplayer, A, T) :- tol_act(7, T), legal(oplayer, A, T), legal_id(A, 3, T), not terminated(T), mtdom(T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), not moveL(oplayer, 4, T), moveL(oplayer, 3, T).
does(oplayer, A, T) :- tol_act(7, T), legal(oplayer, A, T), legal_id(A, 2, T), not terminated(T), mtdom(T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), not moveL(oplayer, 4, T), not moveL(oplayer, 3, T), moveL(oplayer, 2, T).
does(oplayer, A, T) :- tol_act(7, T), legal(oplayer, A, T), legal_id(A, 1, T), not terminated(T), mtdom(T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), not moveL(oplayer, 4, T), not moveL(oplayer, 3, T), not moveL(oplayer, 2, T).
does(oplayer, A, T) :- tol_act(8, T), legal(oplayer, A, T), legal_id(A, 8, T), not terminated(T), mtdom(T), moveL(oplayer, 8, T).
does(oplayer, A, T) :- tol_act(8, T), legal(oplayer, A, T), legal_id(A, 7, T), not terminated(T), mtdom(T), not moveL(oplayer, 8, T), moveL(oplayer, 7, T).
does(oplayer, A, T) :- tol_act(8, T), legal(oplayer, A, T), legal_id(A, 6, T), not terminated(T), mtdom(T), not moveL(oplayer, 8, T), not moveL(oplayer, 7, T), moveL(oplayer, 6, T).
does(oplayer, A, T) :- tol_act(8, T), legal(oplayer, A, T), legal_id(A, 5, T), not terminated(T), mtdom(T), not moveL(oplayer, 8, T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), moveL(oplayer, 5, T).
does(oplayer, A, T) :- tol_act(8, T), legal(oplayer, A, T), legal_id(A, 4, T), not terminated(T), mtdom(T), not moveL(oplayer, 8, T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), moveL(oplayer, 4, T).
does(oplayer, A, T) :- tol_act(8, T), legal(oplayer, A, T), legal_id(A, 3, T), not terminated(T), mtdom(T), not moveL(oplayer, 8, T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), not moveL(oplayer, 4, T), moveL(oplayer, 3, T).
does(oplayer, A, T) :- tol_act(8, T), legal(oplayer, A, T), legal_id(A, 2, T), not terminated(T), mtdom(T), not moveL(oplayer, 8, T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), not moveL(oplayer, 4, T), not moveL(oplayer, 3, T), moveL(oplayer, 2, T).
does(oplayer, A, T) :- tol_act(8, T), legal(oplayer, A, T), legal_id(A, 1, T), not terminated(T), mtdom(T), not moveL(oplayer, 8, T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), not moveL(oplayer, 4, T), not moveL(oplayer, 3, T), not moveL(oplayer, 2, T).
does(oplayer, A, T) :- tol_act(9, T), legal(oplayer, A, T), legal_id(A, 9, T), not terminated(T), mtdom(T), moveL(oplayer, 9, T).
does(oplayer, A, T) :- tol_act(9, T), legal(oplayer, A, T), legal_id(A, 8, T), not terminated(T), mtdom(T), not moveL(oplayer, 9, T), moveL(oplayer, 8, T).
does(oplayer, A, T) :- tol_act(9, T), legal(oplayer, A, T), legal_id(A, 7, T), not terminated(T), mtdom(T), not moveL(oplayer, 9, T), not moveL(oplayer, 8, T), moveL(oplayer, 7, T).
does(oplayer, A, T) :- tol_act(9, T), legal(oplayer, A, T), legal_id(A, 6, T), not terminated(T), mtdom(T), not moveL(oplayer, 9, T), not moveL(oplayer, 8, T), not moveL(oplayer, 7, T), moveL(oplayer, 6, T).
does(oplayer, A, T) :- tol_act(9, T), legal(oplayer, A, T), legal_id(A, 5, T), not terminated(T), mtdom(T), not moveL(oplayer, 9, T), not moveL(oplayer, 8, T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), moveL(oplayer, 5, T).
does(oplayer, A, T) :- tol_act(9, T), legal(oplayer, A, T), legal_id(A, 4, T), not terminated(T), mtdom(T), not moveL(oplayer, 9, T), not moveL(oplayer, 8, T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), moveL(oplayer, 4, T).
does(oplayer, A, T) :- tol_act(9, T), legal(oplayer, A, T), legal_id(A, 3, T), not terminated(T), mtdom(T), not moveL(oplayer, 9, T), not moveL(oplayer, 8, T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), not moveL(oplayer, 4, T), moveL(oplayer, 3, T).
does(oplayer, A, T) :- tol_act(9, T), legal(oplayer, A, T), legal_id(A, 2, T), not terminated(T), mtdom(T), not moveL(oplayer, 9, T), not moveL(oplayer, 8, T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), not moveL(oplayer, 4, T), not moveL(oplayer, 3, T), moveL(oplayer, 2, T).
does(oplayer, A, T) :- tol_act(9, T), legal(oplayer, A, T), legal_id(A, 1, T), not terminated(T), mtdom(T), not moveL(oplayer, 9, T), not moveL(oplayer, 8, T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), not moveL(oplayer, 4, T), not moveL(oplayer, 3, T), not moveL(oplayer, 2, T).
does(oplayer, A, T) :- tol_act(10, T), legal(oplayer, A, T), legal_id(A, 10, T), not terminated(T), mtdom(T), moveL(oplayer, 10, T).
does(oplayer, A, T) :- tol_act(10, T), legal(oplayer, A, T), legal_id(A, 9, T), not terminated(T), mtdom(T), not moveL(oplayer, 10, T), moveL(oplayer, 9, T).
does(oplayer, A, T) :- tol_act(10, T), legal(oplayer, A, T), legal_id(A, 8, T), not terminated(T), mtdom(T), not moveL(oplayer, 10, T), not moveL(oplayer, 9, T), moveL(oplayer, 8, T).
does(oplayer, A, T) :- tol_act(10, T), legal(oplayer, A, T), legal_id(A, 7, T), not terminated(T), mtdom(T), not moveL(oplayer, 10, T), not moveL(oplayer, 9, T), not moveL(oplayer, 8, T), moveL(oplayer, 7, T).
does(oplayer, A, T) :- tol_act(10, T), legal(oplayer, A, T), legal_id(A, 6, T), not terminated(T), mtdom(T), not moveL(oplayer, 10, T), not moveL(oplayer, 9, T), not moveL(oplayer, 8, T), not moveL(oplayer, 7, T), moveL(oplayer, 6, T).
does(oplayer, A, T) :- tol_act(10, T), legal(oplayer, A, T), legal_id(A, 5, T), not terminated(T), mtdom(T), not moveL(oplayer, 10, T), not moveL(oplayer, 9, T), not moveL(oplayer, 8, T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), moveL(oplayer, 5, T).
does(oplayer, A, T) :- tol_act(10, T), legal(oplayer, A, T), legal_id(A, 4, T), not terminated(T), mtdom(T), not moveL(oplayer, 10, T), not moveL(oplayer, 9, T), not moveL(oplayer, 8, T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), moveL(oplayer, 4, T).
does(oplayer, A, T) :- tol_act(10, T), legal(oplayer, A, T), legal_id(A, 3, T), not terminated(T), mtdom(T), not moveL(oplayer, 10, T), not moveL(oplayer, 9, T), not moveL(oplayer, 8, T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), not moveL(oplayer, 4, T), moveL(oplayer, 3, T).
does(oplayer, A, T) :- tol_act(10, T), legal(oplayer, A, T), legal_id(A, 2, T), not terminated(T), mtdom(T), not moveL(oplayer, 10, T), not moveL(oplayer, 9, T), not moveL(oplayer, 8, T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), not moveL(oplayer, 4, T), not moveL(oplayer, 3, T), moveL(oplayer, 2, T).
does(oplayer, A, T) :- tol_act(10, T), legal(oplayer, A, T), legal_id(A, 1, T), not terminated(T), mtdom(T), not moveL(oplayer, 10, T), not moveL(oplayer, 9, T), not moveL(oplayer, 8, T), not moveL(oplayer, 7, T), not moveL(oplayer, 6, T), not moveL(oplayer, 5, T), not moveL(oplayer, 4, T), not moveL(oplayer, 3, T), not moveL(oplayer, 2, T).

% Basic quantifiers
_chance(T * 2, 1, I, moveL(oplayer, I, T)) :- mtdom(T), ordom(I), I > 1.
_exists(T * 2 - 1, does(xplayer, A, T)) :- mtdom(T), input(xplayer, A).
