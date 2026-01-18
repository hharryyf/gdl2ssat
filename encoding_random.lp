front(drop(5)). back(drop(4)).
actord(drop(5), drop(6)).
actord(drop(6), noop).
actord(noop, drop(1)).
actord(drop(1), drop(2)).
actord(drop(2), drop(3)).
actord(drop(3), drop(4)).

ordom(1..1,1).
ordom(1..6,2).
ordom(1..1,3).
ordom(1..6,4).
ordom(1..1,5).
ordom(1..6,6).
ordom(1..1,7).
ordom(1..7,8).
ordom(1..1,9).
ordom(1..7,10).
ordom(1..1,11).
ordom(1..7,12).
ordom(1..1,13).
ordom(1..7,14).
ordom(1..1,15).
ordom(1..7,16).
ordom(1..1,17).
ordom(1..7,18).
ordom(1..1,19).
ordom(1..7,20).
ordom(1..1,21).
ordom(1..7,22).
ordom(1..1,23).
ordom(1..7,24).
ordom(1..1,25).
ordom(1..7,26).
ordom(1..1,27).
ordom(1..7,28).
ordom(1..1,29).
ordom(1..7,30).
ordom(1..1,31).
ordom(1..7,32).
ordom(1..1,33).
ordom(1..7,34).
ordom(1..1,35).
ordom(1..7,36).
legal_id(A, 0, T) :- front(A), not legal(oplayer, A, T), mtdom(T).
legal_id(A, 1, T) :- front(A), legal(oplayer, A, T), mtdom(T).
legal_id(B, N, T) :- actord(A, B), legal(oplayer, B, T), legal_id(A, N-1, T), ordom(N, T).
legal_id(B, N, T) :- actord(A, B), not legal(oplayer, B, T), legal_id(A, N, T).
tol_act(N, T) :- legal_id(A, N, T), back(A).

{moveR(oplayer, I, 1)}:- ordom(I, 1), I > 1.
_chance(1 * 5 - 1, 1, I, moveR(oplayer, I, 1)) :- ordom(I, 1), I > 1.
{moveR(oplayer, 1, 2)}.
_chance(9,1, 2, moveR(oplayer,1,2)).
{moveR(oplayer, 2, 2)}.
_chance(9,1, 2, moveR(oplayer,2,2)).
{moveR(oplayer, 3, 2)}.
_chance(9, 2, 6,moveR(oplayer,3,2)).
:- not does(oplayer, A, 2), legal(oplayer, A, 2), legal_id(A, 1, 2), not terminated(2) , not moveR(oplayer, 3, 2) , not moveR(oplayer,1,2), not moveR(oplayer,2,2).
:- not does(oplayer, A, 2), legal(oplayer, A, 2), legal_id(A, 2, 2), not terminated(2) , not moveR(oplayer, 3, 2) , moveR(oplayer,1,2), not moveR(oplayer,2,2).
:- not does(oplayer, A, 2), legal(oplayer, A, 2), legal_id(A, 3, 2), not terminated(2) , not moveR(oplayer, 3, 2) , not moveR(oplayer,1,2), moveR(oplayer,2,2).
:- not does(oplayer, A, 2), legal(oplayer, A, 2), legal_id(A, 4, 2), not terminated(2) , not moveR(oplayer, 3, 2) , moveR(oplayer,1,2), moveR(oplayer,2,2).
:- not does(oplayer, A, 2), legal(oplayer, A, 2), legal_id(A, 5, 2), not terminated(2) , moveR(oplayer, 3, 2) , not moveR(oplayer,1,2).
:- not does(oplayer, A, 2), legal(oplayer, A, 2), legal_id(A, 6, 2), not terminated(2) , moveR(oplayer, 3, 2) , moveR(oplayer,1,2).
{moveR(oplayer, I, 3)}:- ordom(I, 3), I > 1.
_chance(3 * 5 - 1, 1, I, moveR(oplayer, I, 3)) :- ordom(I, 3), I > 1.
{moveR(oplayer, 1, 4)}.
_chance(19,1, 2, moveR(oplayer,1,4)).
{moveR(oplayer, 2, 4)}.
_chance(19,1, 2, moveR(oplayer,2,4)).
{moveR(oplayer, 3, 4)}.
_chance(19, 2, 6,moveR(oplayer,3,4)).
:- not does(oplayer, A, 4), legal(oplayer, A, 4), legal_id(A, 1, 4), not terminated(4) , not moveR(oplayer, 3, 4) , not moveR(oplayer,1,4), not moveR(oplayer,2,4).
:- not does(oplayer, A, 4), legal(oplayer, A, 4), legal_id(A, 2, 4), not terminated(4) , not moveR(oplayer, 3, 4) , moveR(oplayer,1,4), not moveR(oplayer,2,4).
:- not does(oplayer, A, 4), legal(oplayer, A, 4), legal_id(A, 3, 4), not terminated(4) , not moveR(oplayer, 3, 4) , not moveR(oplayer,1,4), moveR(oplayer,2,4).
:- not does(oplayer, A, 4), legal(oplayer, A, 4), legal_id(A, 4, 4), not terminated(4) , not moveR(oplayer, 3, 4) , moveR(oplayer,1,4), moveR(oplayer,2,4).
:- not does(oplayer, A, 4), legal(oplayer, A, 4), legal_id(A, 5, 4), not terminated(4) , moveR(oplayer, 3, 4) , not moveR(oplayer,1,4).
:- not does(oplayer, A, 4), legal(oplayer, A, 4), legal_id(A, 6, 4), not terminated(4) , moveR(oplayer, 3, 4) , moveR(oplayer,1,4).
{moveR(oplayer, I, 5)}:- ordom(I, 5), I > 1.
_chance(5 * 5 - 1, 1, I, moveR(oplayer, I, 5)) :- ordom(I, 5), I > 1.
{moveR(oplayer, 1, 6)}.
_chance(29,1, 2, moveR(oplayer,1,6)).
{moveR(oplayer, 2, 6)}.
_chance(29,1, 2, moveR(oplayer,2,6)).
{moveR(oplayer, 3, 6)}.
_chance(29, 2, 6,moveR(oplayer,3,6)).
:- not does(oplayer, A, 6), legal(oplayer, A, 6), legal_id(A, 1, 6), not terminated(6) , not moveR(oplayer, 3, 6) , not moveR(oplayer,1,6), not moveR(oplayer,2,6).
:- not does(oplayer, A, 6), legal(oplayer, A, 6), legal_id(A, 2, 6), not terminated(6) , not moveR(oplayer, 3, 6) , moveR(oplayer,1,6), not moveR(oplayer,2,6).
:- not does(oplayer, A, 6), legal(oplayer, A, 6), legal_id(A, 3, 6), not terminated(6) , not moveR(oplayer, 3, 6) , not moveR(oplayer,1,6), moveR(oplayer,2,6).
:- not does(oplayer, A, 6), legal(oplayer, A, 6), legal_id(A, 4, 6), not terminated(6) , not moveR(oplayer, 3, 6) , moveR(oplayer,1,6), moveR(oplayer,2,6).
:- not does(oplayer, A, 6), legal(oplayer, A, 6), legal_id(A, 5, 6), not terminated(6) , moveR(oplayer, 3, 6) , not moveR(oplayer,1,6).
:- not does(oplayer, A, 6), legal(oplayer, A, 6), legal_id(A, 6, 6), not terminated(6) , moveR(oplayer, 3, 6) , moveR(oplayer,1,6).
{moveR(oplayer, I, 7)}:- ordom(I, 7), I > 1.
_chance(7 * 5 - 1, 1, I, moveR(oplayer, I, 7)) :- ordom(I, 7), I > 1.
{moveR(oplayer, I, 8)}:- ordom(I, 8), I > 1.
_chance(8 * 5 - 1, 1, I, moveR(oplayer, I, 8)) :- ordom(I, 8), I > 1.
:- not does(oplayer, A, 8),  tol_act(2, 8), legal(oplayer, A, 8), legal_id(A, 2, 8), not terminated(8), moveR(oplayer, 2, 8).
:- not does(oplayer, A, 8),  tol_act(2, 8), legal(oplayer, A, 8), legal_id(A, 1, 8), not terminated(8), not moveR(oplayer, 2, 8).
:- not does(oplayer, A, 8),  tol_act(3, 8), legal(oplayer, A, 8), legal_id(A, 3, 8), not terminated(8), moveR(oplayer, 3, 8).
:- not does(oplayer, A, 8),  tol_act(3, 8), legal(oplayer, A, 8), legal_id(A, 2, 8), not terminated(8), not moveR(oplayer, 3, 8), moveR(oplayer, 2, 8).
:- not does(oplayer, A, 8),  tol_act(3, 8), legal(oplayer, A, 8), legal_id(A, 1, 8), not terminated(8), not moveR(oplayer, 3, 8), not moveR(oplayer, 2, 8).
:- not does(oplayer, A, 8),  tol_act(4, 8), legal(oplayer, A, 8), legal_id(A, 4, 8), not terminated(8), moveR(oplayer, 4, 8).
:- not does(oplayer, A, 8),  tol_act(4, 8), legal(oplayer, A, 8), legal_id(A, 3, 8), not terminated(8), not moveR(oplayer, 4, 8), moveR(oplayer, 3, 8).
:- not does(oplayer, A, 8),  tol_act(4, 8), legal(oplayer, A, 8), legal_id(A, 2, 8), not terminated(8), not moveR(oplayer, 4, 8), not moveR(oplayer, 3, 8), moveR(oplayer, 2, 8).
:- not does(oplayer, A, 8),  tol_act(4, 8), legal(oplayer, A, 8), legal_id(A, 1, 8), not terminated(8), not moveR(oplayer, 4, 8), not moveR(oplayer, 3, 8), not moveR(oplayer, 2, 8).
:- not does(oplayer, A, 8),  tol_act(5, 8), legal(oplayer, A, 8), legal_id(A, 5, 8), not terminated(8), moveR(oplayer, 5, 8).
:- not does(oplayer, A, 8),  tol_act(5, 8), legal(oplayer, A, 8), legal_id(A, 4, 8), not terminated(8), not moveR(oplayer, 5, 8), moveR(oplayer, 4, 8).
:- not does(oplayer, A, 8),  tol_act(5, 8), legal(oplayer, A, 8), legal_id(A, 3, 8), not terminated(8), not moveR(oplayer, 5, 8), not moveR(oplayer, 4, 8), moveR(oplayer, 3, 8).
:- not does(oplayer, A, 8),  tol_act(5, 8), legal(oplayer, A, 8), legal_id(A, 2, 8), not terminated(8), not moveR(oplayer, 5, 8), not moveR(oplayer, 4, 8), not moveR(oplayer, 3, 8), moveR(oplayer, 2, 8).
:- not does(oplayer, A, 8),  tol_act(5, 8), legal(oplayer, A, 8), legal_id(A, 1, 8), not terminated(8), not moveR(oplayer, 5, 8), not moveR(oplayer, 4, 8), not moveR(oplayer, 3, 8), not moveR(oplayer, 2, 8).
:- not does(oplayer, A, 8),  tol_act(6, 8), legal(oplayer, A, 8), legal_id(A, 6, 8), not terminated(8), moveR(oplayer, 6, 8).
:- not does(oplayer, A, 8),  tol_act(6, 8), legal(oplayer, A, 8), legal_id(A, 5, 8), not terminated(8), not moveR(oplayer, 6, 8), moveR(oplayer, 5, 8).
:- not does(oplayer, A, 8),  tol_act(6, 8), legal(oplayer, A, 8), legal_id(A, 4, 8), not terminated(8), not moveR(oplayer, 6, 8), not moveR(oplayer, 5, 8), moveR(oplayer, 4, 8).
:- not does(oplayer, A, 8),  tol_act(6, 8), legal(oplayer, A, 8), legal_id(A, 3, 8), not terminated(8), not moveR(oplayer, 6, 8), not moveR(oplayer, 5, 8), not moveR(oplayer, 4, 8), moveR(oplayer, 3, 8).
:- not does(oplayer, A, 8),  tol_act(6, 8), legal(oplayer, A, 8), legal_id(A, 2, 8), not terminated(8), not moveR(oplayer, 6, 8), not moveR(oplayer, 5, 8), not moveR(oplayer, 4, 8), not moveR(oplayer, 3, 8), moveR(oplayer, 2, 8).
:- not does(oplayer, A, 8),  tol_act(6, 8), legal(oplayer, A, 8), legal_id(A, 1, 8), not terminated(8), not moveR(oplayer, 6, 8), not moveR(oplayer, 5, 8), not moveR(oplayer, 4, 8), not moveR(oplayer, 3, 8), not moveR(oplayer, 2, 8).
:- not does(oplayer, A, 8),  tol_act(7, 8), legal(oplayer, A, 8), legal_id(A, 7, 8), not terminated(8), moveR(oplayer, 7, 8).
:- not does(oplayer, A, 8),  tol_act(7, 8), legal(oplayer, A, 8), legal_id(A, 6, 8), not terminated(8), not moveR(oplayer, 7, 8), moveR(oplayer, 6, 8).
:- not does(oplayer, A, 8),  tol_act(7, 8), legal(oplayer, A, 8), legal_id(A, 5, 8), not terminated(8), not moveR(oplayer, 7, 8), not moveR(oplayer, 6, 8), moveR(oplayer, 5, 8).
:- not does(oplayer, A, 8),  tol_act(7, 8), legal(oplayer, A, 8), legal_id(A, 4, 8), not terminated(8), not moveR(oplayer, 7, 8), not moveR(oplayer, 6, 8), not moveR(oplayer, 5, 8), moveR(oplayer, 4, 8).
:- not does(oplayer, A, 8),  tol_act(7, 8), legal(oplayer, A, 8), legal_id(A, 3, 8), not terminated(8), not moveR(oplayer, 7, 8), not moveR(oplayer, 6, 8), not moveR(oplayer, 5, 8), not moveR(oplayer, 4, 8), moveR(oplayer, 3, 8).
:- not does(oplayer, A, 8),  tol_act(7, 8), legal(oplayer, A, 8), legal_id(A, 2, 8), not terminated(8), not moveR(oplayer, 7, 8), not moveR(oplayer, 6, 8), not moveR(oplayer, 5, 8), not moveR(oplayer, 4, 8), not moveR(oplayer, 3, 8), moveR(oplayer, 2, 8).
:- not does(oplayer, A, 8),  tol_act(7, 8), legal(oplayer, A, 8), legal_id(A, 1, 8), not terminated(8), not moveR(oplayer, 7, 8), not moveR(oplayer, 6, 8), not moveR(oplayer, 5, 8), not moveR(oplayer, 4, 8), not moveR(oplayer, 3, 8), not moveR(oplayer, 2, 8).
{moveR(oplayer, I, 9)}:- ordom(I, 9), I > 1.
_chance(9 * 5 - 1, 1, I, moveR(oplayer, I, 9)) :- ordom(I, 9), I > 1.
{moveR(oplayer, I, 10)}:- ordom(I, 10), I > 1.
_chance(10 * 5 - 1, 1, I, moveR(oplayer, I, 10)) :- ordom(I, 10), I > 1.
:- not does(oplayer, A, 10),  tol_act(2, 10), legal(oplayer, A, 10), legal_id(A, 2, 10), not terminated(10), moveR(oplayer, 2, 10).
:- not does(oplayer, A, 10),  tol_act(2, 10), legal(oplayer, A, 10), legal_id(A, 1, 10), not terminated(10), not moveR(oplayer, 2, 10).
:- not does(oplayer, A, 10),  tol_act(3, 10), legal(oplayer, A, 10), legal_id(A, 3, 10), not terminated(10), moveR(oplayer, 3, 10).
:- not does(oplayer, A, 10),  tol_act(3, 10), legal(oplayer, A, 10), legal_id(A, 2, 10), not terminated(10), not moveR(oplayer, 3, 10), moveR(oplayer, 2, 10).
:- not does(oplayer, A, 10),  tol_act(3, 10), legal(oplayer, A, 10), legal_id(A, 1, 10), not terminated(10), not moveR(oplayer, 3, 10), not moveR(oplayer, 2, 10).
:- not does(oplayer, A, 10),  tol_act(4, 10), legal(oplayer, A, 10), legal_id(A, 4, 10), not terminated(10), moveR(oplayer, 4, 10).
:- not does(oplayer, A, 10),  tol_act(4, 10), legal(oplayer, A, 10), legal_id(A, 3, 10), not terminated(10), not moveR(oplayer, 4, 10), moveR(oplayer, 3, 10).
:- not does(oplayer, A, 10),  tol_act(4, 10), legal(oplayer, A, 10), legal_id(A, 2, 10), not terminated(10), not moveR(oplayer, 4, 10), not moveR(oplayer, 3, 10), moveR(oplayer, 2, 10).
:- not does(oplayer, A, 10),  tol_act(4, 10), legal(oplayer, A, 10), legal_id(A, 1, 10), not terminated(10), not moveR(oplayer, 4, 10), not moveR(oplayer, 3, 10), not moveR(oplayer, 2, 10).
:- not does(oplayer, A, 10),  tol_act(5, 10), legal(oplayer, A, 10), legal_id(A, 5, 10), not terminated(10), moveR(oplayer, 5, 10).
:- not does(oplayer, A, 10),  tol_act(5, 10), legal(oplayer, A, 10), legal_id(A, 4, 10), not terminated(10), not moveR(oplayer, 5, 10), moveR(oplayer, 4, 10).
:- not does(oplayer, A, 10),  tol_act(5, 10), legal(oplayer, A, 10), legal_id(A, 3, 10), not terminated(10), not moveR(oplayer, 5, 10), not moveR(oplayer, 4, 10), moveR(oplayer, 3, 10).
:- not does(oplayer, A, 10),  tol_act(5, 10), legal(oplayer, A, 10), legal_id(A, 2, 10), not terminated(10), not moveR(oplayer, 5, 10), not moveR(oplayer, 4, 10), not moveR(oplayer, 3, 10), moveR(oplayer, 2, 10).
:- not does(oplayer, A, 10),  tol_act(5, 10), legal(oplayer, A, 10), legal_id(A, 1, 10), not terminated(10), not moveR(oplayer, 5, 10), not moveR(oplayer, 4, 10), not moveR(oplayer, 3, 10), not moveR(oplayer, 2, 10).
:- not does(oplayer, A, 10),  tol_act(6, 10), legal(oplayer, A, 10), legal_id(A, 6, 10), not terminated(10), moveR(oplayer, 6, 10).
:- not does(oplayer, A, 10),  tol_act(6, 10), legal(oplayer, A, 10), legal_id(A, 5, 10), not terminated(10), not moveR(oplayer, 6, 10), moveR(oplayer, 5, 10).
:- not does(oplayer, A, 10),  tol_act(6, 10), legal(oplayer, A, 10), legal_id(A, 4, 10), not terminated(10), not moveR(oplayer, 6, 10), not moveR(oplayer, 5, 10), moveR(oplayer, 4, 10).
:- not does(oplayer, A, 10),  tol_act(6, 10), legal(oplayer, A, 10), legal_id(A, 3, 10), not terminated(10), not moveR(oplayer, 6, 10), not moveR(oplayer, 5, 10), not moveR(oplayer, 4, 10), moveR(oplayer, 3, 10).
:- not does(oplayer, A, 10),  tol_act(6, 10), legal(oplayer, A, 10), legal_id(A, 2, 10), not terminated(10), not moveR(oplayer, 6, 10), not moveR(oplayer, 5, 10), not moveR(oplayer, 4, 10), not moveR(oplayer, 3, 10), moveR(oplayer, 2, 10).
:- not does(oplayer, A, 10),  tol_act(6, 10), legal(oplayer, A, 10), legal_id(A, 1, 10), not terminated(10), not moveR(oplayer, 6, 10), not moveR(oplayer, 5, 10), not moveR(oplayer, 4, 10), not moveR(oplayer, 3, 10), not moveR(oplayer, 2, 10).
:- not does(oplayer, A, 10),  tol_act(7, 10), legal(oplayer, A, 10), legal_id(A, 7, 10), not terminated(10), moveR(oplayer, 7, 10).
:- not does(oplayer, A, 10),  tol_act(7, 10), legal(oplayer, A, 10), legal_id(A, 6, 10), not terminated(10), not moveR(oplayer, 7, 10), moveR(oplayer, 6, 10).
:- not does(oplayer, A, 10),  tol_act(7, 10), legal(oplayer, A, 10), legal_id(A, 5, 10), not terminated(10), not moveR(oplayer, 7, 10), not moveR(oplayer, 6, 10), moveR(oplayer, 5, 10).
:- not does(oplayer, A, 10),  tol_act(7, 10), legal(oplayer, A, 10), legal_id(A, 4, 10), not terminated(10), not moveR(oplayer, 7, 10), not moveR(oplayer, 6, 10), not moveR(oplayer, 5, 10), moveR(oplayer, 4, 10).
:- not does(oplayer, A, 10),  tol_act(7, 10), legal(oplayer, A, 10), legal_id(A, 3, 10), not terminated(10), not moveR(oplayer, 7, 10), not moveR(oplayer, 6, 10), not moveR(oplayer, 5, 10), not moveR(oplayer, 4, 10), moveR(oplayer, 3, 10).
:- not does(oplayer, A, 10),  tol_act(7, 10), legal(oplayer, A, 10), legal_id(A, 2, 10), not terminated(10), not moveR(oplayer, 7, 10), not moveR(oplayer, 6, 10), not moveR(oplayer, 5, 10), not moveR(oplayer, 4, 10), not moveR(oplayer, 3, 10), moveR(oplayer, 2, 10).
:- not does(oplayer, A, 10),  tol_act(7, 10), legal(oplayer, A, 10), legal_id(A, 1, 10), not terminated(10), not moveR(oplayer, 7, 10), not moveR(oplayer, 6, 10), not moveR(oplayer, 5, 10), not moveR(oplayer, 4, 10), not moveR(oplayer, 3, 10), not moveR(oplayer, 2, 10).
{moveR(oplayer, I, 11)}:- ordom(I, 11), I > 1.
_chance(11 * 5 - 1, 1, I, moveR(oplayer, I, 11)) :- ordom(I, 11), I > 1.
{moveR(oplayer, I, 12)}:- ordom(I, 12), I > 1.
_chance(12 * 5 - 1, 1, I, moveR(oplayer, I, 12)) :- ordom(I, 12), I > 1.
:- not does(oplayer, A, 12),  tol_act(2, 12), legal(oplayer, A, 12), legal_id(A, 2, 12), not terminated(12), moveR(oplayer, 2, 12).
:- not does(oplayer, A, 12),  tol_act(2, 12), legal(oplayer, A, 12), legal_id(A, 1, 12), not terminated(12), not moveR(oplayer, 2, 12).
:- not does(oplayer, A, 12),  tol_act(3, 12), legal(oplayer, A, 12), legal_id(A, 3, 12), not terminated(12), moveR(oplayer, 3, 12).
:- not does(oplayer, A, 12),  tol_act(3, 12), legal(oplayer, A, 12), legal_id(A, 2, 12), not terminated(12), not moveR(oplayer, 3, 12), moveR(oplayer, 2, 12).
:- not does(oplayer, A, 12),  tol_act(3, 12), legal(oplayer, A, 12), legal_id(A, 1, 12), not terminated(12), not moveR(oplayer, 3, 12), not moveR(oplayer, 2, 12).
:- not does(oplayer, A, 12),  tol_act(4, 12), legal(oplayer, A, 12), legal_id(A, 4, 12), not terminated(12), moveR(oplayer, 4, 12).
:- not does(oplayer, A, 12),  tol_act(4, 12), legal(oplayer, A, 12), legal_id(A, 3, 12), not terminated(12), not moveR(oplayer, 4, 12), moveR(oplayer, 3, 12).
:- not does(oplayer, A, 12),  tol_act(4, 12), legal(oplayer, A, 12), legal_id(A, 2, 12), not terminated(12), not moveR(oplayer, 4, 12), not moveR(oplayer, 3, 12), moveR(oplayer, 2, 12).
:- not does(oplayer, A, 12),  tol_act(4, 12), legal(oplayer, A, 12), legal_id(A, 1, 12), not terminated(12), not moveR(oplayer, 4, 12), not moveR(oplayer, 3, 12), not moveR(oplayer, 2, 12).
:- not does(oplayer, A, 12),  tol_act(5, 12), legal(oplayer, A, 12), legal_id(A, 5, 12), not terminated(12), moveR(oplayer, 5, 12).
:- not does(oplayer, A, 12),  tol_act(5, 12), legal(oplayer, A, 12), legal_id(A, 4, 12), not terminated(12), not moveR(oplayer, 5, 12), moveR(oplayer, 4, 12).
:- not does(oplayer, A, 12),  tol_act(5, 12), legal(oplayer, A, 12), legal_id(A, 3, 12), not terminated(12), not moveR(oplayer, 5, 12), not moveR(oplayer, 4, 12), moveR(oplayer, 3, 12).
:- not does(oplayer, A, 12),  tol_act(5, 12), legal(oplayer, A, 12), legal_id(A, 2, 12), not terminated(12), not moveR(oplayer, 5, 12), not moveR(oplayer, 4, 12), not moveR(oplayer, 3, 12), moveR(oplayer, 2, 12).
:- not does(oplayer, A, 12),  tol_act(5, 12), legal(oplayer, A, 12), legal_id(A, 1, 12), not terminated(12), not moveR(oplayer, 5, 12), not moveR(oplayer, 4, 12), not moveR(oplayer, 3, 12), not moveR(oplayer, 2, 12).
:- not does(oplayer, A, 12),  tol_act(6, 12), legal(oplayer, A, 12), legal_id(A, 6, 12), not terminated(12), moveR(oplayer, 6, 12).
:- not does(oplayer, A, 12),  tol_act(6, 12), legal(oplayer, A, 12), legal_id(A, 5, 12), not terminated(12), not moveR(oplayer, 6, 12), moveR(oplayer, 5, 12).
:- not does(oplayer, A, 12),  tol_act(6, 12), legal(oplayer, A, 12), legal_id(A, 4, 12), not terminated(12), not moveR(oplayer, 6, 12), not moveR(oplayer, 5, 12), moveR(oplayer, 4, 12).
:- not does(oplayer, A, 12),  tol_act(6, 12), legal(oplayer, A, 12), legal_id(A, 3, 12), not terminated(12), not moveR(oplayer, 6, 12), not moveR(oplayer, 5, 12), not moveR(oplayer, 4, 12), moveR(oplayer, 3, 12).
:- not does(oplayer, A, 12),  tol_act(6, 12), legal(oplayer, A, 12), legal_id(A, 2, 12), not terminated(12), not moveR(oplayer, 6, 12), not moveR(oplayer, 5, 12), not moveR(oplayer, 4, 12), not moveR(oplayer, 3, 12), moveR(oplayer, 2, 12).
:- not does(oplayer, A, 12),  tol_act(6, 12), legal(oplayer, A, 12), legal_id(A, 1, 12), not terminated(12), not moveR(oplayer, 6, 12), not moveR(oplayer, 5, 12), not moveR(oplayer, 4, 12), not moveR(oplayer, 3, 12), not moveR(oplayer, 2, 12).
:- not does(oplayer, A, 12),  tol_act(7, 12), legal(oplayer, A, 12), legal_id(A, 7, 12), not terminated(12), moveR(oplayer, 7, 12).
:- not does(oplayer, A, 12),  tol_act(7, 12), legal(oplayer, A, 12), legal_id(A, 6, 12), not terminated(12), not moveR(oplayer, 7, 12), moveR(oplayer, 6, 12).
:- not does(oplayer, A, 12),  tol_act(7, 12), legal(oplayer, A, 12), legal_id(A, 5, 12), not terminated(12), not moveR(oplayer, 7, 12), not moveR(oplayer, 6, 12), moveR(oplayer, 5, 12).
:- not does(oplayer, A, 12),  tol_act(7, 12), legal(oplayer, A, 12), legal_id(A, 4, 12), not terminated(12), not moveR(oplayer, 7, 12), not moveR(oplayer, 6, 12), not moveR(oplayer, 5, 12), moveR(oplayer, 4, 12).
:- not does(oplayer, A, 12),  tol_act(7, 12), legal(oplayer, A, 12), legal_id(A, 3, 12), not terminated(12), not moveR(oplayer, 7, 12), not moveR(oplayer, 6, 12), not moveR(oplayer, 5, 12), not moveR(oplayer, 4, 12), moveR(oplayer, 3, 12).
:- not does(oplayer, A, 12),  tol_act(7, 12), legal(oplayer, A, 12), legal_id(A, 2, 12), not terminated(12), not moveR(oplayer, 7, 12), not moveR(oplayer, 6, 12), not moveR(oplayer, 5, 12), not moveR(oplayer, 4, 12), not moveR(oplayer, 3, 12), moveR(oplayer, 2, 12).
:- not does(oplayer, A, 12),  tol_act(7, 12), legal(oplayer, A, 12), legal_id(A, 1, 12), not terminated(12), not moveR(oplayer, 7, 12), not moveR(oplayer, 6, 12), not moveR(oplayer, 5, 12), not moveR(oplayer, 4, 12), not moveR(oplayer, 3, 12), not moveR(oplayer, 2, 12).
{moveR(oplayer, I, 13)}:- ordom(I, 13), I > 1.
_chance(13 * 5 - 1, 1, I, moveR(oplayer, I, 13)) :- ordom(I, 13), I > 1.
{moveR(oplayer, I, 14)}:- ordom(I, 14), I > 1.
_chance(14 * 5 - 1, 1, I, moveR(oplayer, I, 14)) :- ordom(I, 14), I > 1.
:- not does(oplayer, A, 14),  tol_act(2, 14), legal(oplayer, A, 14), legal_id(A, 2, 14), not terminated(14), moveR(oplayer, 2, 14).
:- not does(oplayer, A, 14),  tol_act(2, 14), legal(oplayer, A, 14), legal_id(A, 1, 14), not terminated(14), not moveR(oplayer, 2, 14).
:- not does(oplayer, A, 14),  tol_act(3, 14), legal(oplayer, A, 14), legal_id(A, 3, 14), not terminated(14), moveR(oplayer, 3, 14).
:- not does(oplayer, A, 14),  tol_act(3, 14), legal(oplayer, A, 14), legal_id(A, 2, 14), not terminated(14), not moveR(oplayer, 3, 14), moveR(oplayer, 2, 14).
:- not does(oplayer, A, 14),  tol_act(3, 14), legal(oplayer, A, 14), legal_id(A, 1, 14), not terminated(14), not moveR(oplayer, 3, 14), not moveR(oplayer, 2, 14).
:- not does(oplayer, A, 14),  tol_act(4, 14), legal(oplayer, A, 14), legal_id(A, 4, 14), not terminated(14), moveR(oplayer, 4, 14).
:- not does(oplayer, A, 14),  tol_act(4, 14), legal(oplayer, A, 14), legal_id(A, 3, 14), not terminated(14), not moveR(oplayer, 4, 14), moveR(oplayer, 3, 14).
:- not does(oplayer, A, 14),  tol_act(4, 14), legal(oplayer, A, 14), legal_id(A, 2, 14), not terminated(14), not moveR(oplayer, 4, 14), not moveR(oplayer, 3, 14), moveR(oplayer, 2, 14).
:- not does(oplayer, A, 14),  tol_act(4, 14), legal(oplayer, A, 14), legal_id(A, 1, 14), not terminated(14), not moveR(oplayer, 4, 14), not moveR(oplayer, 3, 14), not moveR(oplayer, 2, 14).
:- not does(oplayer, A, 14),  tol_act(5, 14), legal(oplayer, A, 14), legal_id(A, 5, 14), not terminated(14), moveR(oplayer, 5, 14).
:- not does(oplayer, A, 14),  tol_act(5, 14), legal(oplayer, A, 14), legal_id(A, 4, 14), not terminated(14), not moveR(oplayer, 5, 14), moveR(oplayer, 4, 14).
:- not does(oplayer, A, 14),  tol_act(5, 14), legal(oplayer, A, 14), legal_id(A, 3, 14), not terminated(14), not moveR(oplayer, 5, 14), not moveR(oplayer, 4, 14), moveR(oplayer, 3, 14).
:- not does(oplayer, A, 14),  tol_act(5, 14), legal(oplayer, A, 14), legal_id(A, 2, 14), not terminated(14), not moveR(oplayer, 5, 14), not moveR(oplayer, 4, 14), not moveR(oplayer, 3, 14), moveR(oplayer, 2, 14).
:- not does(oplayer, A, 14),  tol_act(5, 14), legal(oplayer, A, 14), legal_id(A, 1, 14), not terminated(14), not moveR(oplayer, 5, 14), not moveR(oplayer, 4, 14), not moveR(oplayer, 3, 14), not moveR(oplayer, 2, 14).
:- not does(oplayer, A, 14),  tol_act(6, 14), legal(oplayer, A, 14), legal_id(A, 6, 14), not terminated(14), moveR(oplayer, 6, 14).
:- not does(oplayer, A, 14),  tol_act(6, 14), legal(oplayer, A, 14), legal_id(A, 5, 14), not terminated(14), not moveR(oplayer, 6, 14), moveR(oplayer, 5, 14).
:- not does(oplayer, A, 14),  tol_act(6, 14), legal(oplayer, A, 14), legal_id(A, 4, 14), not terminated(14), not moveR(oplayer, 6, 14), not moveR(oplayer, 5, 14), moveR(oplayer, 4, 14).
:- not does(oplayer, A, 14),  tol_act(6, 14), legal(oplayer, A, 14), legal_id(A, 3, 14), not terminated(14), not moveR(oplayer, 6, 14), not moveR(oplayer, 5, 14), not moveR(oplayer, 4, 14), moveR(oplayer, 3, 14).
:- not does(oplayer, A, 14),  tol_act(6, 14), legal(oplayer, A, 14), legal_id(A, 2, 14), not terminated(14), not moveR(oplayer, 6, 14), not moveR(oplayer, 5, 14), not moveR(oplayer, 4, 14), not moveR(oplayer, 3, 14), moveR(oplayer, 2, 14).
:- not does(oplayer, A, 14),  tol_act(6, 14), legal(oplayer, A, 14), legal_id(A, 1, 14), not terminated(14), not moveR(oplayer, 6, 14), not moveR(oplayer, 5, 14), not moveR(oplayer, 4, 14), not moveR(oplayer, 3, 14), not moveR(oplayer, 2, 14).
:- not does(oplayer, A, 14),  tol_act(7, 14), legal(oplayer, A, 14), legal_id(A, 7, 14), not terminated(14), moveR(oplayer, 7, 14).
:- not does(oplayer, A, 14),  tol_act(7, 14), legal(oplayer, A, 14), legal_id(A, 6, 14), not terminated(14), not moveR(oplayer, 7, 14), moveR(oplayer, 6, 14).
:- not does(oplayer, A, 14),  tol_act(7, 14), legal(oplayer, A, 14), legal_id(A, 5, 14), not terminated(14), not moveR(oplayer, 7, 14), not moveR(oplayer, 6, 14), moveR(oplayer, 5, 14).
:- not does(oplayer, A, 14),  tol_act(7, 14), legal(oplayer, A, 14), legal_id(A, 4, 14), not terminated(14), not moveR(oplayer, 7, 14), not moveR(oplayer, 6, 14), not moveR(oplayer, 5, 14), moveR(oplayer, 4, 14).
:- not does(oplayer, A, 14),  tol_act(7, 14), legal(oplayer, A, 14), legal_id(A, 3, 14), not terminated(14), not moveR(oplayer, 7, 14), not moveR(oplayer, 6, 14), not moveR(oplayer, 5, 14), not moveR(oplayer, 4, 14), moveR(oplayer, 3, 14).
:- not does(oplayer, A, 14),  tol_act(7, 14), legal(oplayer, A, 14), legal_id(A, 2, 14), not terminated(14), not moveR(oplayer, 7, 14), not moveR(oplayer, 6, 14), not moveR(oplayer, 5, 14), not moveR(oplayer, 4, 14), not moveR(oplayer, 3, 14), moveR(oplayer, 2, 14).
:- not does(oplayer, A, 14),  tol_act(7, 14), legal(oplayer, A, 14), legal_id(A, 1, 14), not terminated(14), not moveR(oplayer, 7, 14), not moveR(oplayer, 6, 14), not moveR(oplayer, 5, 14), not moveR(oplayer, 4, 14), not moveR(oplayer, 3, 14), not moveR(oplayer, 2, 14).
{moveR(oplayer, I, 15)}:- ordom(I, 15), I > 1.
_chance(15 * 5 - 1, 1, I, moveR(oplayer, I, 15)) :- ordom(I, 15), I > 1.
{moveR(oplayer, I, 16)}:- ordom(I, 16), I > 1.
_chance(16 * 5 - 1, 1, I, moveR(oplayer, I, 16)) :- ordom(I, 16), I > 1.
:- not does(oplayer, A, 16),  tol_act(2, 16), legal(oplayer, A, 16), legal_id(A, 2, 16), not terminated(16), moveR(oplayer, 2, 16).
:- not does(oplayer, A, 16),  tol_act(2, 16), legal(oplayer, A, 16), legal_id(A, 1, 16), not terminated(16), not moveR(oplayer, 2, 16).
:- not does(oplayer, A, 16),  tol_act(3, 16), legal(oplayer, A, 16), legal_id(A, 3, 16), not terminated(16), moveR(oplayer, 3, 16).
:- not does(oplayer, A, 16),  tol_act(3, 16), legal(oplayer, A, 16), legal_id(A, 2, 16), not terminated(16), not moveR(oplayer, 3, 16), moveR(oplayer, 2, 16).
:- not does(oplayer, A, 16),  tol_act(3, 16), legal(oplayer, A, 16), legal_id(A, 1, 16), not terminated(16), not moveR(oplayer, 3, 16), not moveR(oplayer, 2, 16).
:- not does(oplayer, A, 16),  tol_act(4, 16), legal(oplayer, A, 16), legal_id(A, 4, 16), not terminated(16), moveR(oplayer, 4, 16).
:- not does(oplayer, A, 16),  tol_act(4, 16), legal(oplayer, A, 16), legal_id(A, 3, 16), not terminated(16), not moveR(oplayer, 4, 16), moveR(oplayer, 3, 16).
:- not does(oplayer, A, 16),  tol_act(4, 16), legal(oplayer, A, 16), legal_id(A, 2, 16), not terminated(16), not moveR(oplayer, 4, 16), not moveR(oplayer, 3, 16), moveR(oplayer, 2, 16).
:- not does(oplayer, A, 16),  tol_act(4, 16), legal(oplayer, A, 16), legal_id(A, 1, 16), not terminated(16), not moveR(oplayer, 4, 16), not moveR(oplayer, 3, 16), not moveR(oplayer, 2, 16).
:- not does(oplayer, A, 16),  tol_act(5, 16), legal(oplayer, A, 16), legal_id(A, 5, 16), not terminated(16), moveR(oplayer, 5, 16).
:- not does(oplayer, A, 16),  tol_act(5, 16), legal(oplayer, A, 16), legal_id(A, 4, 16), not terminated(16), not moveR(oplayer, 5, 16), moveR(oplayer, 4, 16).
:- not does(oplayer, A, 16),  tol_act(5, 16), legal(oplayer, A, 16), legal_id(A, 3, 16), not terminated(16), not moveR(oplayer, 5, 16), not moveR(oplayer, 4, 16), moveR(oplayer, 3, 16).
:- not does(oplayer, A, 16),  tol_act(5, 16), legal(oplayer, A, 16), legal_id(A, 2, 16), not terminated(16), not moveR(oplayer, 5, 16), not moveR(oplayer, 4, 16), not moveR(oplayer, 3, 16), moveR(oplayer, 2, 16).
:- not does(oplayer, A, 16),  tol_act(5, 16), legal(oplayer, A, 16), legal_id(A, 1, 16), not terminated(16), not moveR(oplayer, 5, 16), not moveR(oplayer, 4, 16), not moveR(oplayer, 3, 16), not moveR(oplayer, 2, 16).
:- not does(oplayer, A, 16),  tol_act(6, 16), legal(oplayer, A, 16), legal_id(A, 6, 16), not terminated(16), moveR(oplayer, 6, 16).
:- not does(oplayer, A, 16),  tol_act(6, 16), legal(oplayer, A, 16), legal_id(A, 5, 16), not terminated(16), not moveR(oplayer, 6, 16), moveR(oplayer, 5, 16).
:- not does(oplayer, A, 16),  tol_act(6, 16), legal(oplayer, A, 16), legal_id(A, 4, 16), not terminated(16), not moveR(oplayer, 6, 16), not moveR(oplayer, 5, 16), moveR(oplayer, 4, 16).
:- not does(oplayer, A, 16),  tol_act(6, 16), legal(oplayer, A, 16), legal_id(A, 3, 16), not terminated(16), not moveR(oplayer, 6, 16), not moveR(oplayer, 5, 16), not moveR(oplayer, 4, 16), moveR(oplayer, 3, 16).
:- not does(oplayer, A, 16),  tol_act(6, 16), legal(oplayer, A, 16), legal_id(A, 2, 16), not terminated(16), not moveR(oplayer, 6, 16), not moveR(oplayer, 5, 16), not moveR(oplayer, 4, 16), not moveR(oplayer, 3, 16), moveR(oplayer, 2, 16).
:- not does(oplayer, A, 16),  tol_act(6, 16), legal(oplayer, A, 16), legal_id(A, 1, 16), not terminated(16), not moveR(oplayer, 6, 16), not moveR(oplayer, 5, 16), not moveR(oplayer, 4, 16), not moveR(oplayer, 3, 16), not moveR(oplayer, 2, 16).
:- not does(oplayer, A, 16),  tol_act(7, 16), legal(oplayer, A, 16), legal_id(A, 7, 16), not terminated(16), moveR(oplayer, 7, 16).
:- not does(oplayer, A, 16),  tol_act(7, 16), legal(oplayer, A, 16), legal_id(A, 6, 16), not terminated(16), not moveR(oplayer, 7, 16), moveR(oplayer, 6, 16).
:- not does(oplayer, A, 16),  tol_act(7, 16), legal(oplayer, A, 16), legal_id(A, 5, 16), not terminated(16), not moveR(oplayer, 7, 16), not moveR(oplayer, 6, 16), moveR(oplayer, 5, 16).
:- not does(oplayer, A, 16),  tol_act(7, 16), legal(oplayer, A, 16), legal_id(A, 4, 16), not terminated(16), not moveR(oplayer, 7, 16), not moveR(oplayer, 6, 16), not moveR(oplayer, 5, 16), moveR(oplayer, 4, 16).
:- not does(oplayer, A, 16),  tol_act(7, 16), legal(oplayer, A, 16), legal_id(A, 3, 16), not terminated(16), not moveR(oplayer, 7, 16), not moveR(oplayer, 6, 16), not moveR(oplayer, 5, 16), not moveR(oplayer, 4, 16), moveR(oplayer, 3, 16).
:- not does(oplayer, A, 16),  tol_act(7, 16), legal(oplayer, A, 16), legal_id(A, 2, 16), not terminated(16), not moveR(oplayer, 7, 16), not moveR(oplayer, 6, 16), not moveR(oplayer, 5, 16), not moveR(oplayer, 4, 16), not moveR(oplayer, 3, 16), moveR(oplayer, 2, 16).
:- not does(oplayer, A, 16),  tol_act(7, 16), legal(oplayer, A, 16), legal_id(A, 1, 16), not terminated(16), not moveR(oplayer, 7, 16), not moveR(oplayer, 6, 16), not moveR(oplayer, 5, 16), not moveR(oplayer, 4, 16), not moveR(oplayer, 3, 16), not moveR(oplayer, 2, 16).
{moveR(oplayer, I, 17)}:- ordom(I, 17), I > 1.
_chance(17 * 5 - 1, 1, I, moveR(oplayer, I, 17)) :- ordom(I, 17), I > 1.
{moveR(oplayer, I, 18)}:- ordom(I, 18), I > 1.
_chance(18 * 5 - 1, 1, I, moveR(oplayer, I, 18)) :- ordom(I, 18), I > 1.
:- not does(oplayer, A, 18),  tol_act(2, 18), legal(oplayer, A, 18), legal_id(A, 2, 18), not terminated(18), moveR(oplayer, 2, 18).
:- not does(oplayer, A, 18),  tol_act(2, 18), legal(oplayer, A, 18), legal_id(A, 1, 18), not terminated(18), not moveR(oplayer, 2, 18).
:- not does(oplayer, A, 18),  tol_act(3, 18), legal(oplayer, A, 18), legal_id(A, 3, 18), not terminated(18), moveR(oplayer, 3, 18).
:- not does(oplayer, A, 18),  tol_act(3, 18), legal(oplayer, A, 18), legal_id(A, 2, 18), not terminated(18), not moveR(oplayer, 3, 18), moveR(oplayer, 2, 18).
:- not does(oplayer, A, 18),  tol_act(3, 18), legal(oplayer, A, 18), legal_id(A, 1, 18), not terminated(18), not moveR(oplayer, 3, 18), not moveR(oplayer, 2, 18).
:- not does(oplayer, A, 18),  tol_act(4, 18), legal(oplayer, A, 18), legal_id(A, 4, 18), not terminated(18), moveR(oplayer, 4, 18).
:- not does(oplayer, A, 18),  tol_act(4, 18), legal(oplayer, A, 18), legal_id(A, 3, 18), not terminated(18), not moveR(oplayer, 4, 18), moveR(oplayer, 3, 18).
:- not does(oplayer, A, 18),  tol_act(4, 18), legal(oplayer, A, 18), legal_id(A, 2, 18), not terminated(18), not moveR(oplayer, 4, 18), not moveR(oplayer, 3, 18), moveR(oplayer, 2, 18).
:- not does(oplayer, A, 18),  tol_act(4, 18), legal(oplayer, A, 18), legal_id(A, 1, 18), not terminated(18), not moveR(oplayer, 4, 18), not moveR(oplayer, 3, 18), not moveR(oplayer, 2, 18).
:- not does(oplayer, A, 18),  tol_act(5, 18), legal(oplayer, A, 18), legal_id(A, 5, 18), not terminated(18), moveR(oplayer, 5, 18).
:- not does(oplayer, A, 18),  tol_act(5, 18), legal(oplayer, A, 18), legal_id(A, 4, 18), not terminated(18), not moveR(oplayer, 5, 18), moveR(oplayer, 4, 18).
:- not does(oplayer, A, 18),  tol_act(5, 18), legal(oplayer, A, 18), legal_id(A, 3, 18), not terminated(18), not moveR(oplayer, 5, 18), not moveR(oplayer, 4, 18), moveR(oplayer, 3, 18).
:- not does(oplayer, A, 18),  tol_act(5, 18), legal(oplayer, A, 18), legal_id(A, 2, 18), not terminated(18), not moveR(oplayer, 5, 18), not moveR(oplayer, 4, 18), not moveR(oplayer, 3, 18), moveR(oplayer, 2, 18).
:- not does(oplayer, A, 18),  tol_act(5, 18), legal(oplayer, A, 18), legal_id(A, 1, 18), not terminated(18), not moveR(oplayer, 5, 18), not moveR(oplayer, 4, 18), not moveR(oplayer, 3, 18), not moveR(oplayer, 2, 18).
:- not does(oplayer, A, 18),  tol_act(6, 18), legal(oplayer, A, 18), legal_id(A, 6, 18), not terminated(18), moveR(oplayer, 6, 18).
:- not does(oplayer, A, 18),  tol_act(6, 18), legal(oplayer, A, 18), legal_id(A, 5, 18), not terminated(18), not moveR(oplayer, 6, 18), moveR(oplayer, 5, 18).
:- not does(oplayer, A, 18),  tol_act(6, 18), legal(oplayer, A, 18), legal_id(A, 4, 18), not terminated(18), not moveR(oplayer, 6, 18), not moveR(oplayer, 5, 18), moveR(oplayer, 4, 18).
:- not does(oplayer, A, 18),  tol_act(6, 18), legal(oplayer, A, 18), legal_id(A, 3, 18), not terminated(18), not moveR(oplayer, 6, 18), not moveR(oplayer, 5, 18), not moveR(oplayer, 4, 18), moveR(oplayer, 3, 18).
:- not does(oplayer, A, 18),  tol_act(6, 18), legal(oplayer, A, 18), legal_id(A, 2, 18), not terminated(18), not moveR(oplayer, 6, 18), not moveR(oplayer, 5, 18), not moveR(oplayer, 4, 18), not moveR(oplayer, 3, 18), moveR(oplayer, 2, 18).
:- not does(oplayer, A, 18),  tol_act(6, 18), legal(oplayer, A, 18), legal_id(A, 1, 18), not terminated(18), not moveR(oplayer, 6, 18), not moveR(oplayer, 5, 18), not moveR(oplayer, 4, 18), not moveR(oplayer, 3, 18), not moveR(oplayer, 2, 18).
:- not does(oplayer, A, 18),  tol_act(7, 18), legal(oplayer, A, 18), legal_id(A, 7, 18), not terminated(18), moveR(oplayer, 7, 18).
:- not does(oplayer, A, 18),  tol_act(7, 18), legal(oplayer, A, 18), legal_id(A, 6, 18), not terminated(18), not moveR(oplayer, 7, 18), moveR(oplayer, 6, 18).
:- not does(oplayer, A, 18),  tol_act(7, 18), legal(oplayer, A, 18), legal_id(A, 5, 18), not terminated(18), not moveR(oplayer, 7, 18), not moveR(oplayer, 6, 18), moveR(oplayer, 5, 18).
:- not does(oplayer, A, 18),  tol_act(7, 18), legal(oplayer, A, 18), legal_id(A, 4, 18), not terminated(18), not moveR(oplayer, 7, 18), not moveR(oplayer, 6, 18), not moveR(oplayer, 5, 18), moveR(oplayer, 4, 18).
:- not does(oplayer, A, 18),  tol_act(7, 18), legal(oplayer, A, 18), legal_id(A, 3, 18), not terminated(18), not moveR(oplayer, 7, 18), not moveR(oplayer, 6, 18), not moveR(oplayer, 5, 18), not moveR(oplayer, 4, 18), moveR(oplayer, 3, 18).
:- not does(oplayer, A, 18),  tol_act(7, 18), legal(oplayer, A, 18), legal_id(A, 2, 18), not terminated(18), not moveR(oplayer, 7, 18), not moveR(oplayer, 6, 18), not moveR(oplayer, 5, 18), not moveR(oplayer, 4, 18), not moveR(oplayer, 3, 18), moveR(oplayer, 2, 18).
:- not does(oplayer, A, 18),  tol_act(7, 18), legal(oplayer, A, 18), legal_id(A, 1, 18), not terminated(18), not moveR(oplayer, 7, 18), not moveR(oplayer, 6, 18), not moveR(oplayer, 5, 18), not moveR(oplayer, 4, 18), not moveR(oplayer, 3, 18), not moveR(oplayer, 2, 18).
{moveR(oplayer, I, 19)}:- ordom(I, 19), I > 1.
_chance(19 * 5 - 1, 1, I, moveR(oplayer, I, 19)) :- ordom(I, 19), I > 1.
{moveR(oplayer, I, 20)}:- ordom(I, 20), I > 1.
_chance(20 * 5 - 1, 1, I, moveR(oplayer, I, 20)) :- ordom(I, 20), I > 1.
:- not does(oplayer, A, 20),  tol_act(2, 20), legal(oplayer, A, 20), legal_id(A, 2, 20), not terminated(20), moveR(oplayer, 2, 20).
:- not does(oplayer, A, 20),  tol_act(2, 20), legal(oplayer, A, 20), legal_id(A, 1, 20), not terminated(20), not moveR(oplayer, 2, 20).
:- not does(oplayer, A, 20),  tol_act(3, 20), legal(oplayer, A, 20), legal_id(A, 3, 20), not terminated(20), moveR(oplayer, 3, 20).
:- not does(oplayer, A, 20),  tol_act(3, 20), legal(oplayer, A, 20), legal_id(A, 2, 20), not terminated(20), not moveR(oplayer, 3, 20), moveR(oplayer, 2, 20).
:- not does(oplayer, A, 20),  tol_act(3, 20), legal(oplayer, A, 20), legal_id(A, 1, 20), not terminated(20), not moveR(oplayer, 3, 20), not moveR(oplayer, 2, 20).
:- not does(oplayer, A, 20),  tol_act(4, 20), legal(oplayer, A, 20), legal_id(A, 4, 20), not terminated(20), moveR(oplayer, 4, 20).
:- not does(oplayer, A, 20),  tol_act(4, 20), legal(oplayer, A, 20), legal_id(A, 3, 20), not terminated(20), not moveR(oplayer, 4, 20), moveR(oplayer, 3, 20).
:- not does(oplayer, A, 20),  tol_act(4, 20), legal(oplayer, A, 20), legal_id(A, 2, 20), not terminated(20), not moveR(oplayer, 4, 20), not moveR(oplayer, 3, 20), moveR(oplayer, 2, 20).
:- not does(oplayer, A, 20),  tol_act(4, 20), legal(oplayer, A, 20), legal_id(A, 1, 20), not terminated(20), not moveR(oplayer, 4, 20), not moveR(oplayer, 3, 20), not moveR(oplayer, 2, 20).
:- not does(oplayer, A, 20),  tol_act(5, 20), legal(oplayer, A, 20), legal_id(A, 5, 20), not terminated(20), moveR(oplayer, 5, 20).
:- not does(oplayer, A, 20),  tol_act(5, 20), legal(oplayer, A, 20), legal_id(A, 4, 20), not terminated(20), not moveR(oplayer, 5, 20), moveR(oplayer, 4, 20).
:- not does(oplayer, A, 20),  tol_act(5, 20), legal(oplayer, A, 20), legal_id(A, 3, 20), not terminated(20), not moveR(oplayer, 5, 20), not moveR(oplayer, 4, 20), moveR(oplayer, 3, 20).
:- not does(oplayer, A, 20),  tol_act(5, 20), legal(oplayer, A, 20), legal_id(A, 2, 20), not terminated(20), not moveR(oplayer, 5, 20), not moveR(oplayer, 4, 20), not moveR(oplayer, 3, 20), moveR(oplayer, 2, 20).
:- not does(oplayer, A, 20),  tol_act(5, 20), legal(oplayer, A, 20), legal_id(A, 1, 20), not terminated(20), not moveR(oplayer, 5, 20), not moveR(oplayer, 4, 20), not moveR(oplayer, 3, 20), not moveR(oplayer, 2, 20).
:- not does(oplayer, A, 20),  tol_act(6, 20), legal(oplayer, A, 20), legal_id(A, 6, 20), not terminated(20), moveR(oplayer, 6, 20).
:- not does(oplayer, A, 20),  tol_act(6, 20), legal(oplayer, A, 20), legal_id(A, 5, 20), not terminated(20), not moveR(oplayer, 6, 20), moveR(oplayer, 5, 20).
:- not does(oplayer, A, 20),  tol_act(6, 20), legal(oplayer, A, 20), legal_id(A, 4, 20), not terminated(20), not moveR(oplayer, 6, 20), not moveR(oplayer, 5, 20), moveR(oplayer, 4, 20).
:- not does(oplayer, A, 20),  tol_act(6, 20), legal(oplayer, A, 20), legal_id(A, 3, 20), not terminated(20), not moveR(oplayer, 6, 20), not moveR(oplayer, 5, 20), not moveR(oplayer, 4, 20), moveR(oplayer, 3, 20).
:- not does(oplayer, A, 20),  tol_act(6, 20), legal(oplayer, A, 20), legal_id(A, 2, 20), not terminated(20), not moveR(oplayer, 6, 20), not moveR(oplayer, 5, 20), not moveR(oplayer, 4, 20), not moveR(oplayer, 3, 20), moveR(oplayer, 2, 20).
:- not does(oplayer, A, 20),  tol_act(6, 20), legal(oplayer, A, 20), legal_id(A, 1, 20), not terminated(20), not moveR(oplayer, 6, 20), not moveR(oplayer, 5, 20), not moveR(oplayer, 4, 20), not moveR(oplayer, 3, 20), not moveR(oplayer, 2, 20).
:- not does(oplayer, A, 20),  tol_act(7, 20), legal(oplayer, A, 20), legal_id(A, 7, 20), not terminated(20), moveR(oplayer, 7, 20).
:- not does(oplayer, A, 20),  tol_act(7, 20), legal(oplayer, A, 20), legal_id(A, 6, 20), not terminated(20), not moveR(oplayer, 7, 20), moveR(oplayer, 6, 20).
:- not does(oplayer, A, 20),  tol_act(7, 20), legal(oplayer, A, 20), legal_id(A, 5, 20), not terminated(20), not moveR(oplayer, 7, 20), not moveR(oplayer, 6, 20), moveR(oplayer, 5, 20).
:- not does(oplayer, A, 20),  tol_act(7, 20), legal(oplayer, A, 20), legal_id(A, 4, 20), not terminated(20), not moveR(oplayer, 7, 20), not moveR(oplayer, 6, 20), not moveR(oplayer, 5, 20), moveR(oplayer, 4, 20).
:- not does(oplayer, A, 20),  tol_act(7, 20), legal(oplayer, A, 20), legal_id(A, 3, 20), not terminated(20), not moveR(oplayer, 7, 20), not moveR(oplayer, 6, 20), not moveR(oplayer, 5, 20), not moveR(oplayer, 4, 20), moveR(oplayer, 3, 20).
:- not does(oplayer, A, 20),  tol_act(7, 20), legal(oplayer, A, 20), legal_id(A, 2, 20), not terminated(20), not moveR(oplayer, 7, 20), not moveR(oplayer, 6, 20), not moveR(oplayer, 5, 20), not moveR(oplayer, 4, 20), not moveR(oplayer, 3, 20), moveR(oplayer, 2, 20).
:- not does(oplayer, A, 20),  tol_act(7, 20), legal(oplayer, A, 20), legal_id(A, 1, 20), not terminated(20), not moveR(oplayer, 7, 20), not moveR(oplayer, 6, 20), not moveR(oplayer, 5, 20), not moveR(oplayer, 4, 20), not moveR(oplayer, 3, 20), not moveR(oplayer, 2, 20).
{moveR(oplayer, I, 21)}:- ordom(I, 21), I > 1.
_chance(21 * 5 - 1, 1, I, moveR(oplayer, I, 21)) :- ordom(I, 21), I > 1.
{moveR(oplayer, I, 22)}:- ordom(I, 22), I > 1.
_chance(22 * 5 - 1, 1, I, moveR(oplayer, I, 22)) :- ordom(I, 22), I > 1.
:- not does(oplayer, A, 22),  tol_act(2, 22), legal(oplayer, A, 22), legal_id(A, 2, 22), not terminated(22), moveR(oplayer, 2, 22).
:- not does(oplayer, A, 22),  tol_act(2, 22), legal(oplayer, A, 22), legal_id(A, 1, 22), not terminated(22), not moveR(oplayer, 2, 22).
:- not does(oplayer, A, 22),  tol_act(3, 22), legal(oplayer, A, 22), legal_id(A, 3, 22), not terminated(22), moveR(oplayer, 3, 22).
:- not does(oplayer, A, 22),  tol_act(3, 22), legal(oplayer, A, 22), legal_id(A, 2, 22), not terminated(22), not moveR(oplayer, 3, 22), moveR(oplayer, 2, 22).
:- not does(oplayer, A, 22),  tol_act(3, 22), legal(oplayer, A, 22), legal_id(A, 1, 22), not terminated(22), not moveR(oplayer, 3, 22), not moveR(oplayer, 2, 22).
:- not does(oplayer, A, 22),  tol_act(4, 22), legal(oplayer, A, 22), legal_id(A, 4, 22), not terminated(22), moveR(oplayer, 4, 22).
:- not does(oplayer, A, 22),  tol_act(4, 22), legal(oplayer, A, 22), legal_id(A, 3, 22), not terminated(22), not moveR(oplayer, 4, 22), moveR(oplayer, 3, 22).
:- not does(oplayer, A, 22),  tol_act(4, 22), legal(oplayer, A, 22), legal_id(A, 2, 22), not terminated(22), not moveR(oplayer, 4, 22), not moveR(oplayer, 3, 22), moveR(oplayer, 2, 22).
:- not does(oplayer, A, 22),  tol_act(4, 22), legal(oplayer, A, 22), legal_id(A, 1, 22), not terminated(22), not moveR(oplayer, 4, 22), not moveR(oplayer, 3, 22), not moveR(oplayer, 2, 22).
:- not does(oplayer, A, 22),  tol_act(5, 22), legal(oplayer, A, 22), legal_id(A, 5, 22), not terminated(22), moveR(oplayer, 5, 22).
:- not does(oplayer, A, 22),  tol_act(5, 22), legal(oplayer, A, 22), legal_id(A, 4, 22), not terminated(22), not moveR(oplayer, 5, 22), moveR(oplayer, 4, 22).
:- not does(oplayer, A, 22),  tol_act(5, 22), legal(oplayer, A, 22), legal_id(A, 3, 22), not terminated(22), not moveR(oplayer, 5, 22), not moveR(oplayer, 4, 22), moveR(oplayer, 3, 22).
:- not does(oplayer, A, 22),  tol_act(5, 22), legal(oplayer, A, 22), legal_id(A, 2, 22), not terminated(22), not moveR(oplayer, 5, 22), not moveR(oplayer, 4, 22), not moveR(oplayer, 3, 22), moveR(oplayer, 2, 22).
:- not does(oplayer, A, 22),  tol_act(5, 22), legal(oplayer, A, 22), legal_id(A, 1, 22), not terminated(22), not moveR(oplayer, 5, 22), not moveR(oplayer, 4, 22), not moveR(oplayer, 3, 22), not moveR(oplayer, 2, 22).
:- not does(oplayer, A, 22),  tol_act(6, 22), legal(oplayer, A, 22), legal_id(A, 6, 22), not terminated(22), moveR(oplayer, 6, 22).
:- not does(oplayer, A, 22),  tol_act(6, 22), legal(oplayer, A, 22), legal_id(A, 5, 22), not terminated(22), not moveR(oplayer, 6, 22), moveR(oplayer, 5, 22).
:- not does(oplayer, A, 22),  tol_act(6, 22), legal(oplayer, A, 22), legal_id(A, 4, 22), not terminated(22), not moveR(oplayer, 6, 22), not moveR(oplayer, 5, 22), moveR(oplayer, 4, 22).
:- not does(oplayer, A, 22),  tol_act(6, 22), legal(oplayer, A, 22), legal_id(A, 3, 22), not terminated(22), not moveR(oplayer, 6, 22), not moveR(oplayer, 5, 22), not moveR(oplayer, 4, 22), moveR(oplayer, 3, 22).
:- not does(oplayer, A, 22),  tol_act(6, 22), legal(oplayer, A, 22), legal_id(A, 2, 22), not terminated(22), not moveR(oplayer, 6, 22), not moveR(oplayer, 5, 22), not moveR(oplayer, 4, 22), not moveR(oplayer, 3, 22), moveR(oplayer, 2, 22).
:- not does(oplayer, A, 22),  tol_act(6, 22), legal(oplayer, A, 22), legal_id(A, 1, 22), not terminated(22), not moveR(oplayer, 6, 22), not moveR(oplayer, 5, 22), not moveR(oplayer, 4, 22), not moveR(oplayer, 3, 22), not moveR(oplayer, 2, 22).
:- not does(oplayer, A, 22),  tol_act(7, 22), legal(oplayer, A, 22), legal_id(A, 7, 22), not terminated(22), moveR(oplayer, 7, 22).
:- not does(oplayer, A, 22),  tol_act(7, 22), legal(oplayer, A, 22), legal_id(A, 6, 22), not terminated(22), not moveR(oplayer, 7, 22), moveR(oplayer, 6, 22).
:- not does(oplayer, A, 22),  tol_act(7, 22), legal(oplayer, A, 22), legal_id(A, 5, 22), not terminated(22), not moveR(oplayer, 7, 22), not moveR(oplayer, 6, 22), moveR(oplayer, 5, 22).
:- not does(oplayer, A, 22),  tol_act(7, 22), legal(oplayer, A, 22), legal_id(A, 4, 22), not terminated(22), not moveR(oplayer, 7, 22), not moveR(oplayer, 6, 22), not moveR(oplayer, 5, 22), moveR(oplayer, 4, 22).
:- not does(oplayer, A, 22),  tol_act(7, 22), legal(oplayer, A, 22), legal_id(A, 3, 22), not terminated(22), not moveR(oplayer, 7, 22), not moveR(oplayer, 6, 22), not moveR(oplayer, 5, 22), not moveR(oplayer, 4, 22), moveR(oplayer, 3, 22).
:- not does(oplayer, A, 22),  tol_act(7, 22), legal(oplayer, A, 22), legal_id(A, 2, 22), not terminated(22), not moveR(oplayer, 7, 22), not moveR(oplayer, 6, 22), not moveR(oplayer, 5, 22), not moveR(oplayer, 4, 22), not moveR(oplayer, 3, 22), moveR(oplayer, 2, 22).
:- not does(oplayer, A, 22),  tol_act(7, 22), legal(oplayer, A, 22), legal_id(A, 1, 22), not terminated(22), not moveR(oplayer, 7, 22), not moveR(oplayer, 6, 22), not moveR(oplayer, 5, 22), not moveR(oplayer, 4, 22), not moveR(oplayer, 3, 22), not moveR(oplayer, 2, 22).
{moveR(oplayer, I, 23)}:- ordom(I, 23), I > 1.
_chance(23 * 5 - 1, 1, I, moveR(oplayer, I, 23)) :- ordom(I, 23), I > 1.
{moveR(oplayer, I, 24)}:- ordom(I, 24), I > 1.
_chance(24 * 5 - 1, 1, I, moveR(oplayer, I, 24)) :- ordom(I, 24), I > 1.
:- not does(oplayer, A, 24),  tol_act(2, 24), legal(oplayer, A, 24), legal_id(A, 2, 24), not terminated(24), moveR(oplayer, 2, 24).
:- not does(oplayer, A, 24),  tol_act(2, 24), legal(oplayer, A, 24), legal_id(A, 1, 24), not terminated(24), not moveR(oplayer, 2, 24).
:- not does(oplayer, A, 24),  tol_act(3, 24), legal(oplayer, A, 24), legal_id(A, 3, 24), not terminated(24), moveR(oplayer, 3, 24).
:- not does(oplayer, A, 24),  tol_act(3, 24), legal(oplayer, A, 24), legal_id(A, 2, 24), not terminated(24), not moveR(oplayer, 3, 24), moveR(oplayer, 2, 24).
:- not does(oplayer, A, 24),  tol_act(3, 24), legal(oplayer, A, 24), legal_id(A, 1, 24), not terminated(24), not moveR(oplayer, 3, 24), not moveR(oplayer, 2, 24).
:- not does(oplayer, A, 24),  tol_act(4, 24), legal(oplayer, A, 24), legal_id(A, 4, 24), not terminated(24), moveR(oplayer, 4, 24).
:- not does(oplayer, A, 24),  tol_act(4, 24), legal(oplayer, A, 24), legal_id(A, 3, 24), not terminated(24), not moveR(oplayer, 4, 24), moveR(oplayer, 3, 24).
:- not does(oplayer, A, 24),  tol_act(4, 24), legal(oplayer, A, 24), legal_id(A, 2, 24), not terminated(24), not moveR(oplayer, 4, 24), not moveR(oplayer, 3, 24), moveR(oplayer, 2, 24).
:- not does(oplayer, A, 24),  tol_act(4, 24), legal(oplayer, A, 24), legal_id(A, 1, 24), not terminated(24), not moveR(oplayer, 4, 24), not moveR(oplayer, 3, 24), not moveR(oplayer, 2, 24).
:- not does(oplayer, A, 24),  tol_act(5, 24), legal(oplayer, A, 24), legal_id(A, 5, 24), not terminated(24), moveR(oplayer, 5, 24).
:- not does(oplayer, A, 24),  tol_act(5, 24), legal(oplayer, A, 24), legal_id(A, 4, 24), not terminated(24), not moveR(oplayer, 5, 24), moveR(oplayer, 4, 24).
:- not does(oplayer, A, 24),  tol_act(5, 24), legal(oplayer, A, 24), legal_id(A, 3, 24), not terminated(24), not moveR(oplayer, 5, 24), not moveR(oplayer, 4, 24), moveR(oplayer, 3, 24).
:- not does(oplayer, A, 24),  tol_act(5, 24), legal(oplayer, A, 24), legal_id(A, 2, 24), not terminated(24), not moveR(oplayer, 5, 24), not moveR(oplayer, 4, 24), not moveR(oplayer, 3, 24), moveR(oplayer, 2, 24).
:- not does(oplayer, A, 24),  tol_act(5, 24), legal(oplayer, A, 24), legal_id(A, 1, 24), not terminated(24), not moveR(oplayer, 5, 24), not moveR(oplayer, 4, 24), not moveR(oplayer, 3, 24), not moveR(oplayer, 2, 24).
:- not does(oplayer, A, 24),  tol_act(6, 24), legal(oplayer, A, 24), legal_id(A, 6, 24), not terminated(24), moveR(oplayer, 6, 24).
:- not does(oplayer, A, 24),  tol_act(6, 24), legal(oplayer, A, 24), legal_id(A, 5, 24), not terminated(24), not moveR(oplayer, 6, 24), moveR(oplayer, 5, 24).
:- not does(oplayer, A, 24),  tol_act(6, 24), legal(oplayer, A, 24), legal_id(A, 4, 24), not terminated(24), not moveR(oplayer, 6, 24), not moveR(oplayer, 5, 24), moveR(oplayer, 4, 24).
:- not does(oplayer, A, 24),  tol_act(6, 24), legal(oplayer, A, 24), legal_id(A, 3, 24), not terminated(24), not moveR(oplayer, 6, 24), not moveR(oplayer, 5, 24), not moveR(oplayer, 4, 24), moveR(oplayer, 3, 24).
:- not does(oplayer, A, 24),  tol_act(6, 24), legal(oplayer, A, 24), legal_id(A, 2, 24), not terminated(24), not moveR(oplayer, 6, 24), not moveR(oplayer, 5, 24), not moveR(oplayer, 4, 24), not moveR(oplayer, 3, 24), moveR(oplayer, 2, 24).
:- not does(oplayer, A, 24),  tol_act(6, 24), legal(oplayer, A, 24), legal_id(A, 1, 24), not terminated(24), not moveR(oplayer, 6, 24), not moveR(oplayer, 5, 24), not moveR(oplayer, 4, 24), not moveR(oplayer, 3, 24), not moveR(oplayer, 2, 24).
:- not does(oplayer, A, 24),  tol_act(7, 24), legal(oplayer, A, 24), legal_id(A, 7, 24), not terminated(24), moveR(oplayer, 7, 24).
:- not does(oplayer, A, 24),  tol_act(7, 24), legal(oplayer, A, 24), legal_id(A, 6, 24), not terminated(24), not moveR(oplayer, 7, 24), moveR(oplayer, 6, 24).
:- not does(oplayer, A, 24),  tol_act(7, 24), legal(oplayer, A, 24), legal_id(A, 5, 24), not terminated(24), not moveR(oplayer, 7, 24), not moveR(oplayer, 6, 24), moveR(oplayer, 5, 24).
:- not does(oplayer, A, 24),  tol_act(7, 24), legal(oplayer, A, 24), legal_id(A, 4, 24), not terminated(24), not moveR(oplayer, 7, 24), not moveR(oplayer, 6, 24), not moveR(oplayer, 5, 24), moveR(oplayer, 4, 24).
:- not does(oplayer, A, 24),  tol_act(7, 24), legal(oplayer, A, 24), legal_id(A, 3, 24), not terminated(24), not moveR(oplayer, 7, 24), not moveR(oplayer, 6, 24), not moveR(oplayer, 5, 24), not moveR(oplayer, 4, 24), moveR(oplayer, 3, 24).
:- not does(oplayer, A, 24),  tol_act(7, 24), legal(oplayer, A, 24), legal_id(A, 2, 24), not terminated(24), not moveR(oplayer, 7, 24), not moveR(oplayer, 6, 24), not moveR(oplayer, 5, 24), not moveR(oplayer, 4, 24), not moveR(oplayer, 3, 24), moveR(oplayer, 2, 24).
:- not does(oplayer, A, 24),  tol_act(7, 24), legal(oplayer, A, 24), legal_id(A, 1, 24), not terminated(24), not moveR(oplayer, 7, 24), not moveR(oplayer, 6, 24), not moveR(oplayer, 5, 24), not moveR(oplayer, 4, 24), not moveR(oplayer, 3, 24), not moveR(oplayer, 2, 24).
{moveR(oplayer, I, 25)}:- ordom(I, 25), I > 1.
_chance(25 * 5 - 1, 1, I, moveR(oplayer, I, 25)) :- ordom(I, 25), I > 1.
{moveR(oplayer, I, 26)}:- ordom(I, 26), I > 1.
_chance(26 * 5 - 1, 1, I, moveR(oplayer, I, 26)) :- ordom(I, 26), I > 1.
:- not does(oplayer, A, 26),  tol_act(2, 26), legal(oplayer, A, 26), legal_id(A, 2, 26), not terminated(26), moveR(oplayer, 2, 26).
:- not does(oplayer, A, 26),  tol_act(2, 26), legal(oplayer, A, 26), legal_id(A, 1, 26), not terminated(26), not moveR(oplayer, 2, 26).
:- not does(oplayer, A, 26),  tol_act(3, 26), legal(oplayer, A, 26), legal_id(A, 3, 26), not terminated(26), moveR(oplayer, 3, 26).
:- not does(oplayer, A, 26),  tol_act(3, 26), legal(oplayer, A, 26), legal_id(A, 2, 26), not terminated(26), not moveR(oplayer, 3, 26), moveR(oplayer, 2, 26).
:- not does(oplayer, A, 26),  tol_act(3, 26), legal(oplayer, A, 26), legal_id(A, 1, 26), not terminated(26), not moveR(oplayer, 3, 26), not moveR(oplayer, 2, 26).
:- not does(oplayer, A, 26),  tol_act(4, 26), legal(oplayer, A, 26), legal_id(A, 4, 26), not terminated(26), moveR(oplayer, 4, 26).
:- not does(oplayer, A, 26),  tol_act(4, 26), legal(oplayer, A, 26), legal_id(A, 3, 26), not terminated(26), not moveR(oplayer, 4, 26), moveR(oplayer, 3, 26).
:- not does(oplayer, A, 26),  tol_act(4, 26), legal(oplayer, A, 26), legal_id(A, 2, 26), not terminated(26), not moveR(oplayer, 4, 26), not moveR(oplayer, 3, 26), moveR(oplayer, 2, 26).
:- not does(oplayer, A, 26),  tol_act(4, 26), legal(oplayer, A, 26), legal_id(A, 1, 26), not terminated(26), not moveR(oplayer, 4, 26), not moveR(oplayer, 3, 26), not moveR(oplayer, 2, 26).
:- not does(oplayer, A, 26),  tol_act(5, 26), legal(oplayer, A, 26), legal_id(A, 5, 26), not terminated(26), moveR(oplayer, 5, 26).
:- not does(oplayer, A, 26),  tol_act(5, 26), legal(oplayer, A, 26), legal_id(A, 4, 26), not terminated(26), not moveR(oplayer, 5, 26), moveR(oplayer, 4, 26).
:- not does(oplayer, A, 26),  tol_act(5, 26), legal(oplayer, A, 26), legal_id(A, 3, 26), not terminated(26), not moveR(oplayer, 5, 26), not moveR(oplayer, 4, 26), moveR(oplayer, 3, 26).
:- not does(oplayer, A, 26),  tol_act(5, 26), legal(oplayer, A, 26), legal_id(A, 2, 26), not terminated(26), not moveR(oplayer, 5, 26), not moveR(oplayer, 4, 26), not moveR(oplayer, 3, 26), moveR(oplayer, 2, 26).
:- not does(oplayer, A, 26),  tol_act(5, 26), legal(oplayer, A, 26), legal_id(A, 1, 26), not terminated(26), not moveR(oplayer, 5, 26), not moveR(oplayer, 4, 26), not moveR(oplayer, 3, 26), not moveR(oplayer, 2, 26).
:- not does(oplayer, A, 26),  tol_act(6, 26), legal(oplayer, A, 26), legal_id(A, 6, 26), not terminated(26), moveR(oplayer, 6, 26).
:- not does(oplayer, A, 26),  tol_act(6, 26), legal(oplayer, A, 26), legal_id(A, 5, 26), not terminated(26), not moveR(oplayer, 6, 26), moveR(oplayer, 5, 26).
:- not does(oplayer, A, 26),  tol_act(6, 26), legal(oplayer, A, 26), legal_id(A, 4, 26), not terminated(26), not moveR(oplayer, 6, 26), not moveR(oplayer, 5, 26), moveR(oplayer, 4, 26).
:- not does(oplayer, A, 26),  tol_act(6, 26), legal(oplayer, A, 26), legal_id(A, 3, 26), not terminated(26), not moveR(oplayer, 6, 26), not moveR(oplayer, 5, 26), not moveR(oplayer, 4, 26), moveR(oplayer, 3, 26).
:- not does(oplayer, A, 26),  tol_act(6, 26), legal(oplayer, A, 26), legal_id(A, 2, 26), not terminated(26), not moveR(oplayer, 6, 26), not moveR(oplayer, 5, 26), not moveR(oplayer, 4, 26), not moveR(oplayer, 3, 26), moveR(oplayer, 2, 26).
:- not does(oplayer, A, 26),  tol_act(6, 26), legal(oplayer, A, 26), legal_id(A, 1, 26), not terminated(26), not moveR(oplayer, 6, 26), not moveR(oplayer, 5, 26), not moveR(oplayer, 4, 26), not moveR(oplayer, 3, 26), not moveR(oplayer, 2, 26).
:- not does(oplayer, A, 26),  tol_act(7, 26), legal(oplayer, A, 26), legal_id(A, 7, 26), not terminated(26), moveR(oplayer, 7, 26).
:- not does(oplayer, A, 26),  tol_act(7, 26), legal(oplayer, A, 26), legal_id(A, 6, 26), not terminated(26), not moveR(oplayer, 7, 26), moveR(oplayer, 6, 26).
:- not does(oplayer, A, 26),  tol_act(7, 26), legal(oplayer, A, 26), legal_id(A, 5, 26), not terminated(26), not moveR(oplayer, 7, 26), not moveR(oplayer, 6, 26), moveR(oplayer, 5, 26).
:- not does(oplayer, A, 26),  tol_act(7, 26), legal(oplayer, A, 26), legal_id(A, 4, 26), not terminated(26), not moveR(oplayer, 7, 26), not moveR(oplayer, 6, 26), not moveR(oplayer, 5, 26), moveR(oplayer, 4, 26).
:- not does(oplayer, A, 26),  tol_act(7, 26), legal(oplayer, A, 26), legal_id(A, 3, 26), not terminated(26), not moveR(oplayer, 7, 26), not moveR(oplayer, 6, 26), not moveR(oplayer, 5, 26), not moveR(oplayer, 4, 26), moveR(oplayer, 3, 26).
:- not does(oplayer, A, 26),  tol_act(7, 26), legal(oplayer, A, 26), legal_id(A, 2, 26), not terminated(26), not moveR(oplayer, 7, 26), not moveR(oplayer, 6, 26), not moveR(oplayer, 5, 26), not moveR(oplayer, 4, 26), not moveR(oplayer, 3, 26), moveR(oplayer, 2, 26).
:- not does(oplayer, A, 26),  tol_act(7, 26), legal(oplayer, A, 26), legal_id(A, 1, 26), not terminated(26), not moveR(oplayer, 7, 26), not moveR(oplayer, 6, 26), not moveR(oplayer, 5, 26), not moveR(oplayer, 4, 26), not moveR(oplayer, 3, 26), not moveR(oplayer, 2, 26).
{moveR(oplayer, I, 27)}:- ordom(I, 27), I > 1.
_chance(27 * 5 - 1, 1, I, moveR(oplayer, I, 27)) :- ordom(I, 27), I > 1.
{moveR(oplayer, I, 28)}:- ordom(I, 28), I > 1.
_chance(28 * 5 - 1, 1, I, moveR(oplayer, I, 28)) :- ordom(I, 28), I > 1.
:- not does(oplayer, A, 28),  tol_act(2, 28), legal(oplayer, A, 28), legal_id(A, 2, 28), not terminated(28), moveR(oplayer, 2, 28).
:- not does(oplayer, A, 28),  tol_act(2, 28), legal(oplayer, A, 28), legal_id(A, 1, 28), not terminated(28), not moveR(oplayer, 2, 28).
:- not does(oplayer, A, 28),  tol_act(3, 28), legal(oplayer, A, 28), legal_id(A, 3, 28), not terminated(28), moveR(oplayer, 3, 28).
:- not does(oplayer, A, 28),  tol_act(3, 28), legal(oplayer, A, 28), legal_id(A, 2, 28), not terminated(28), not moveR(oplayer, 3, 28), moveR(oplayer, 2, 28).
:- not does(oplayer, A, 28),  tol_act(3, 28), legal(oplayer, A, 28), legal_id(A, 1, 28), not terminated(28), not moveR(oplayer, 3, 28), not moveR(oplayer, 2, 28).
:- not does(oplayer, A, 28),  tol_act(4, 28), legal(oplayer, A, 28), legal_id(A, 4, 28), not terminated(28), moveR(oplayer, 4, 28).
:- not does(oplayer, A, 28),  tol_act(4, 28), legal(oplayer, A, 28), legal_id(A, 3, 28), not terminated(28), not moveR(oplayer, 4, 28), moveR(oplayer, 3, 28).
:- not does(oplayer, A, 28),  tol_act(4, 28), legal(oplayer, A, 28), legal_id(A, 2, 28), not terminated(28), not moveR(oplayer, 4, 28), not moveR(oplayer, 3, 28), moveR(oplayer, 2, 28).
:- not does(oplayer, A, 28),  tol_act(4, 28), legal(oplayer, A, 28), legal_id(A, 1, 28), not terminated(28), not moveR(oplayer, 4, 28), not moveR(oplayer, 3, 28), not moveR(oplayer, 2, 28).
:- not does(oplayer, A, 28),  tol_act(5, 28), legal(oplayer, A, 28), legal_id(A, 5, 28), not terminated(28), moveR(oplayer, 5, 28).
:- not does(oplayer, A, 28),  tol_act(5, 28), legal(oplayer, A, 28), legal_id(A, 4, 28), not terminated(28), not moveR(oplayer, 5, 28), moveR(oplayer, 4, 28).
:- not does(oplayer, A, 28),  tol_act(5, 28), legal(oplayer, A, 28), legal_id(A, 3, 28), not terminated(28), not moveR(oplayer, 5, 28), not moveR(oplayer, 4, 28), moveR(oplayer, 3, 28).
:- not does(oplayer, A, 28),  tol_act(5, 28), legal(oplayer, A, 28), legal_id(A, 2, 28), not terminated(28), not moveR(oplayer, 5, 28), not moveR(oplayer, 4, 28), not moveR(oplayer, 3, 28), moveR(oplayer, 2, 28).
:- not does(oplayer, A, 28),  tol_act(5, 28), legal(oplayer, A, 28), legal_id(A, 1, 28), not terminated(28), not moveR(oplayer, 5, 28), not moveR(oplayer, 4, 28), not moveR(oplayer, 3, 28), not moveR(oplayer, 2, 28).
:- not does(oplayer, A, 28),  tol_act(6, 28), legal(oplayer, A, 28), legal_id(A, 6, 28), not terminated(28), moveR(oplayer, 6, 28).
:- not does(oplayer, A, 28),  tol_act(6, 28), legal(oplayer, A, 28), legal_id(A, 5, 28), not terminated(28), not moveR(oplayer, 6, 28), moveR(oplayer, 5, 28).
:- not does(oplayer, A, 28),  tol_act(6, 28), legal(oplayer, A, 28), legal_id(A, 4, 28), not terminated(28), not moveR(oplayer, 6, 28), not moveR(oplayer, 5, 28), moveR(oplayer, 4, 28).
:- not does(oplayer, A, 28),  tol_act(6, 28), legal(oplayer, A, 28), legal_id(A, 3, 28), not terminated(28), not moveR(oplayer, 6, 28), not moveR(oplayer, 5, 28), not moveR(oplayer, 4, 28), moveR(oplayer, 3, 28).
:- not does(oplayer, A, 28),  tol_act(6, 28), legal(oplayer, A, 28), legal_id(A, 2, 28), not terminated(28), not moveR(oplayer, 6, 28), not moveR(oplayer, 5, 28), not moveR(oplayer, 4, 28), not moveR(oplayer, 3, 28), moveR(oplayer, 2, 28).
:- not does(oplayer, A, 28),  tol_act(6, 28), legal(oplayer, A, 28), legal_id(A, 1, 28), not terminated(28), not moveR(oplayer, 6, 28), not moveR(oplayer, 5, 28), not moveR(oplayer, 4, 28), not moveR(oplayer, 3, 28), not moveR(oplayer, 2, 28).
:- not does(oplayer, A, 28),  tol_act(7, 28), legal(oplayer, A, 28), legal_id(A, 7, 28), not terminated(28), moveR(oplayer, 7, 28).
:- not does(oplayer, A, 28),  tol_act(7, 28), legal(oplayer, A, 28), legal_id(A, 6, 28), not terminated(28), not moveR(oplayer, 7, 28), moveR(oplayer, 6, 28).
:- not does(oplayer, A, 28),  tol_act(7, 28), legal(oplayer, A, 28), legal_id(A, 5, 28), not terminated(28), not moveR(oplayer, 7, 28), not moveR(oplayer, 6, 28), moveR(oplayer, 5, 28).
:- not does(oplayer, A, 28),  tol_act(7, 28), legal(oplayer, A, 28), legal_id(A, 4, 28), not terminated(28), not moveR(oplayer, 7, 28), not moveR(oplayer, 6, 28), not moveR(oplayer, 5, 28), moveR(oplayer, 4, 28).
:- not does(oplayer, A, 28),  tol_act(7, 28), legal(oplayer, A, 28), legal_id(A, 3, 28), not terminated(28), not moveR(oplayer, 7, 28), not moveR(oplayer, 6, 28), not moveR(oplayer, 5, 28), not moveR(oplayer, 4, 28), moveR(oplayer, 3, 28).
:- not does(oplayer, A, 28),  tol_act(7, 28), legal(oplayer, A, 28), legal_id(A, 2, 28), not terminated(28), not moveR(oplayer, 7, 28), not moveR(oplayer, 6, 28), not moveR(oplayer, 5, 28), not moveR(oplayer, 4, 28), not moveR(oplayer, 3, 28), moveR(oplayer, 2, 28).
:- not does(oplayer, A, 28),  tol_act(7, 28), legal(oplayer, A, 28), legal_id(A, 1, 28), not terminated(28), not moveR(oplayer, 7, 28), not moveR(oplayer, 6, 28), not moveR(oplayer, 5, 28), not moveR(oplayer, 4, 28), not moveR(oplayer, 3, 28), not moveR(oplayer, 2, 28).
{moveR(oplayer, I, 29)}:- ordom(I, 29), I > 1.
_chance(29 * 5 - 1, 1, I, moveR(oplayer, I, 29)) :- ordom(I, 29), I > 1.
{moveR(oplayer, I, 30)}:- ordom(I, 30), I > 1.
_chance(30 * 5 - 1, 1, I, moveR(oplayer, I, 30)) :- ordom(I, 30), I > 1.
:- not does(oplayer, A, 30),  tol_act(2, 30), legal(oplayer, A, 30), legal_id(A, 2, 30), not terminated(30), moveR(oplayer, 2, 30).
:- not does(oplayer, A, 30),  tol_act(2, 30), legal(oplayer, A, 30), legal_id(A, 1, 30), not terminated(30), not moveR(oplayer, 2, 30).
:- not does(oplayer, A, 30),  tol_act(3, 30), legal(oplayer, A, 30), legal_id(A, 3, 30), not terminated(30), moveR(oplayer, 3, 30).
:- not does(oplayer, A, 30),  tol_act(3, 30), legal(oplayer, A, 30), legal_id(A, 2, 30), not terminated(30), not moveR(oplayer, 3, 30), moveR(oplayer, 2, 30).
:- not does(oplayer, A, 30),  tol_act(3, 30), legal(oplayer, A, 30), legal_id(A, 1, 30), not terminated(30), not moveR(oplayer, 3, 30), not moveR(oplayer, 2, 30).
:- not does(oplayer, A, 30),  tol_act(4, 30), legal(oplayer, A, 30), legal_id(A, 4, 30), not terminated(30), moveR(oplayer, 4, 30).
:- not does(oplayer, A, 30),  tol_act(4, 30), legal(oplayer, A, 30), legal_id(A, 3, 30), not terminated(30), not moveR(oplayer, 4, 30), moveR(oplayer, 3, 30).
:- not does(oplayer, A, 30),  tol_act(4, 30), legal(oplayer, A, 30), legal_id(A, 2, 30), not terminated(30), not moveR(oplayer, 4, 30), not moveR(oplayer, 3, 30), moveR(oplayer, 2, 30).
:- not does(oplayer, A, 30),  tol_act(4, 30), legal(oplayer, A, 30), legal_id(A, 1, 30), not terminated(30), not moveR(oplayer, 4, 30), not moveR(oplayer, 3, 30), not moveR(oplayer, 2, 30).
:- not does(oplayer, A, 30),  tol_act(5, 30), legal(oplayer, A, 30), legal_id(A, 5, 30), not terminated(30), moveR(oplayer, 5, 30).
:- not does(oplayer, A, 30),  tol_act(5, 30), legal(oplayer, A, 30), legal_id(A, 4, 30), not terminated(30), not moveR(oplayer, 5, 30), moveR(oplayer, 4, 30).
:- not does(oplayer, A, 30),  tol_act(5, 30), legal(oplayer, A, 30), legal_id(A, 3, 30), not terminated(30), not moveR(oplayer, 5, 30), not moveR(oplayer, 4, 30), moveR(oplayer, 3, 30).
:- not does(oplayer, A, 30),  tol_act(5, 30), legal(oplayer, A, 30), legal_id(A, 2, 30), not terminated(30), not moveR(oplayer, 5, 30), not moveR(oplayer, 4, 30), not moveR(oplayer, 3, 30), moveR(oplayer, 2, 30).
:- not does(oplayer, A, 30),  tol_act(5, 30), legal(oplayer, A, 30), legal_id(A, 1, 30), not terminated(30), not moveR(oplayer, 5, 30), not moveR(oplayer, 4, 30), not moveR(oplayer, 3, 30), not moveR(oplayer, 2, 30).
:- not does(oplayer, A, 30),  tol_act(6, 30), legal(oplayer, A, 30), legal_id(A, 6, 30), not terminated(30), moveR(oplayer, 6, 30).
:- not does(oplayer, A, 30),  tol_act(6, 30), legal(oplayer, A, 30), legal_id(A, 5, 30), not terminated(30), not moveR(oplayer, 6, 30), moveR(oplayer, 5, 30).
:- not does(oplayer, A, 30),  tol_act(6, 30), legal(oplayer, A, 30), legal_id(A, 4, 30), not terminated(30), not moveR(oplayer, 6, 30), not moveR(oplayer, 5, 30), moveR(oplayer, 4, 30).
:- not does(oplayer, A, 30),  tol_act(6, 30), legal(oplayer, A, 30), legal_id(A, 3, 30), not terminated(30), not moveR(oplayer, 6, 30), not moveR(oplayer, 5, 30), not moveR(oplayer, 4, 30), moveR(oplayer, 3, 30).
:- not does(oplayer, A, 30),  tol_act(6, 30), legal(oplayer, A, 30), legal_id(A, 2, 30), not terminated(30), not moveR(oplayer, 6, 30), not moveR(oplayer, 5, 30), not moveR(oplayer, 4, 30), not moveR(oplayer, 3, 30), moveR(oplayer, 2, 30).
:- not does(oplayer, A, 30),  tol_act(6, 30), legal(oplayer, A, 30), legal_id(A, 1, 30), not terminated(30), not moveR(oplayer, 6, 30), not moveR(oplayer, 5, 30), not moveR(oplayer, 4, 30), not moveR(oplayer, 3, 30), not moveR(oplayer, 2, 30).
:- not does(oplayer, A, 30),  tol_act(7, 30), legal(oplayer, A, 30), legal_id(A, 7, 30), not terminated(30), moveR(oplayer, 7, 30).
:- not does(oplayer, A, 30),  tol_act(7, 30), legal(oplayer, A, 30), legal_id(A, 6, 30), not terminated(30), not moveR(oplayer, 7, 30), moveR(oplayer, 6, 30).
:- not does(oplayer, A, 30),  tol_act(7, 30), legal(oplayer, A, 30), legal_id(A, 5, 30), not terminated(30), not moveR(oplayer, 7, 30), not moveR(oplayer, 6, 30), moveR(oplayer, 5, 30).
:- not does(oplayer, A, 30),  tol_act(7, 30), legal(oplayer, A, 30), legal_id(A, 4, 30), not terminated(30), not moveR(oplayer, 7, 30), not moveR(oplayer, 6, 30), not moveR(oplayer, 5, 30), moveR(oplayer, 4, 30).
:- not does(oplayer, A, 30),  tol_act(7, 30), legal(oplayer, A, 30), legal_id(A, 3, 30), not terminated(30), not moveR(oplayer, 7, 30), not moveR(oplayer, 6, 30), not moveR(oplayer, 5, 30), not moveR(oplayer, 4, 30), moveR(oplayer, 3, 30).
:- not does(oplayer, A, 30),  tol_act(7, 30), legal(oplayer, A, 30), legal_id(A, 2, 30), not terminated(30), not moveR(oplayer, 7, 30), not moveR(oplayer, 6, 30), not moveR(oplayer, 5, 30), not moveR(oplayer, 4, 30), not moveR(oplayer, 3, 30), moveR(oplayer, 2, 30).
:- not does(oplayer, A, 30),  tol_act(7, 30), legal(oplayer, A, 30), legal_id(A, 1, 30), not terminated(30), not moveR(oplayer, 7, 30), not moveR(oplayer, 6, 30), not moveR(oplayer, 5, 30), not moveR(oplayer, 4, 30), not moveR(oplayer, 3, 30), not moveR(oplayer, 2, 30).
{moveR(oplayer, I, 31)}:- ordom(I, 31), I > 1.
_chance(31 * 5 - 1, 1, I, moveR(oplayer, I, 31)) :- ordom(I, 31), I > 1.
{moveR(oplayer, I, 32)}:- ordom(I, 32), I > 1.
_chance(32 * 5 - 1, 1, I, moveR(oplayer, I, 32)) :- ordom(I, 32), I > 1.
:- not does(oplayer, A, 32),  tol_act(2, 32), legal(oplayer, A, 32), legal_id(A, 2, 32), not terminated(32), moveR(oplayer, 2, 32).
:- not does(oplayer, A, 32),  tol_act(2, 32), legal(oplayer, A, 32), legal_id(A, 1, 32), not terminated(32), not moveR(oplayer, 2, 32).
:- not does(oplayer, A, 32),  tol_act(3, 32), legal(oplayer, A, 32), legal_id(A, 3, 32), not terminated(32), moveR(oplayer, 3, 32).
:- not does(oplayer, A, 32),  tol_act(3, 32), legal(oplayer, A, 32), legal_id(A, 2, 32), not terminated(32), not moveR(oplayer, 3, 32), moveR(oplayer, 2, 32).
:- not does(oplayer, A, 32),  tol_act(3, 32), legal(oplayer, A, 32), legal_id(A, 1, 32), not terminated(32), not moveR(oplayer, 3, 32), not moveR(oplayer, 2, 32).
:- not does(oplayer, A, 32),  tol_act(4, 32), legal(oplayer, A, 32), legal_id(A, 4, 32), not terminated(32), moveR(oplayer, 4, 32).
:- not does(oplayer, A, 32),  tol_act(4, 32), legal(oplayer, A, 32), legal_id(A, 3, 32), not terminated(32), not moveR(oplayer, 4, 32), moveR(oplayer, 3, 32).
:- not does(oplayer, A, 32),  tol_act(4, 32), legal(oplayer, A, 32), legal_id(A, 2, 32), not terminated(32), not moveR(oplayer, 4, 32), not moveR(oplayer, 3, 32), moveR(oplayer, 2, 32).
:- not does(oplayer, A, 32),  tol_act(4, 32), legal(oplayer, A, 32), legal_id(A, 1, 32), not terminated(32), not moveR(oplayer, 4, 32), not moveR(oplayer, 3, 32), not moveR(oplayer, 2, 32).
:- not does(oplayer, A, 32),  tol_act(5, 32), legal(oplayer, A, 32), legal_id(A, 5, 32), not terminated(32), moveR(oplayer, 5, 32).
:- not does(oplayer, A, 32),  tol_act(5, 32), legal(oplayer, A, 32), legal_id(A, 4, 32), not terminated(32), not moveR(oplayer, 5, 32), moveR(oplayer, 4, 32).
:- not does(oplayer, A, 32),  tol_act(5, 32), legal(oplayer, A, 32), legal_id(A, 3, 32), not terminated(32), not moveR(oplayer, 5, 32), not moveR(oplayer, 4, 32), moveR(oplayer, 3, 32).
:- not does(oplayer, A, 32),  tol_act(5, 32), legal(oplayer, A, 32), legal_id(A, 2, 32), not terminated(32), not moveR(oplayer, 5, 32), not moveR(oplayer, 4, 32), not moveR(oplayer, 3, 32), moveR(oplayer, 2, 32).
:- not does(oplayer, A, 32),  tol_act(5, 32), legal(oplayer, A, 32), legal_id(A, 1, 32), not terminated(32), not moveR(oplayer, 5, 32), not moveR(oplayer, 4, 32), not moveR(oplayer, 3, 32), not moveR(oplayer, 2, 32).
:- not does(oplayer, A, 32),  tol_act(6, 32), legal(oplayer, A, 32), legal_id(A, 6, 32), not terminated(32), moveR(oplayer, 6, 32).
:- not does(oplayer, A, 32),  tol_act(6, 32), legal(oplayer, A, 32), legal_id(A, 5, 32), not terminated(32), not moveR(oplayer, 6, 32), moveR(oplayer, 5, 32).
:- not does(oplayer, A, 32),  tol_act(6, 32), legal(oplayer, A, 32), legal_id(A, 4, 32), not terminated(32), not moveR(oplayer, 6, 32), not moveR(oplayer, 5, 32), moveR(oplayer, 4, 32).
:- not does(oplayer, A, 32),  tol_act(6, 32), legal(oplayer, A, 32), legal_id(A, 3, 32), not terminated(32), not moveR(oplayer, 6, 32), not moveR(oplayer, 5, 32), not moveR(oplayer, 4, 32), moveR(oplayer, 3, 32).
:- not does(oplayer, A, 32),  tol_act(6, 32), legal(oplayer, A, 32), legal_id(A, 2, 32), not terminated(32), not moveR(oplayer, 6, 32), not moveR(oplayer, 5, 32), not moveR(oplayer, 4, 32), not moveR(oplayer, 3, 32), moveR(oplayer, 2, 32).
:- not does(oplayer, A, 32),  tol_act(6, 32), legal(oplayer, A, 32), legal_id(A, 1, 32), not terminated(32), not moveR(oplayer, 6, 32), not moveR(oplayer, 5, 32), not moveR(oplayer, 4, 32), not moveR(oplayer, 3, 32), not moveR(oplayer, 2, 32).
:- not does(oplayer, A, 32),  tol_act(7, 32), legal(oplayer, A, 32), legal_id(A, 7, 32), not terminated(32), moveR(oplayer, 7, 32).
:- not does(oplayer, A, 32),  tol_act(7, 32), legal(oplayer, A, 32), legal_id(A, 6, 32), not terminated(32), not moveR(oplayer, 7, 32), moveR(oplayer, 6, 32).
:- not does(oplayer, A, 32),  tol_act(7, 32), legal(oplayer, A, 32), legal_id(A, 5, 32), not terminated(32), not moveR(oplayer, 7, 32), not moveR(oplayer, 6, 32), moveR(oplayer, 5, 32).
:- not does(oplayer, A, 32),  tol_act(7, 32), legal(oplayer, A, 32), legal_id(A, 4, 32), not terminated(32), not moveR(oplayer, 7, 32), not moveR(oplayer, 6, 32), not moveR(oplayer, 5, 32), moveR(oplayer, 4, 32).
:- not does(oplayer, A, 32),  tol_act(7, 32), legal(oplayer, A, 32), legal_id(A, 3, 32), not terminated(32), not moveR(oplayer, 7, 32), not moveR(oplayer, 6, 32), not moveR(oplayer, 5, 32), not moveR(oplayer, 4, 32), moveR(oplayer, 3, 32).
:- not does(oplayer, A, 32),  tol_act(7, 32), legal(oplayer, A, 32), legal_id(A, 2, 32), not terminated(32), not moveR(oplayer, 7, 32), not moveR(oplayer, 6, 32), not moveR(oplayer, 5, 32), not moveR(oplayer, 4, 32), not moveR(oplayer, 3, 32), moveR(oplayer, 2, 32).
:- not does(oplayer, A, 32),  tol_act(7, 32), legal(oplayer, A, 32), legal_id(A, 1, 32), not terminated(32), not moveR(oplayer, 7, 32), not moveR(oplayer, 6, 32), not moveR(oplayer, 5, 32), not moveR(oplayer, 4, 32), not moveR(oplayer, 3, 32), not moveR(oplayer, 2, 32).
{moveR(oplayer, I, 33)}:- ordom(I, 33), I > 1.
_chance(33 * 5 - 1, 1, I, moveR(oplayer, I, 33)) :- ordom(I, 33), I > 1.
{moveR(oplayer, I, 34)}:- ordom(I, 34), I > 1.
_chance(34 * 5 - 1, 1, I, moveR(oplayer, I, 34)) :- ordom(I, 34), I > 1.
:- not does(oplayer, A, 34),  tol_act(2, 34), legal(oplayer, A, 34), legal_id(A, 2, 34), not terminated(34), moveR(oplayer, 2, 34).
:- not does(oplayer, A, 34),  tol_act(2, 34), legal(oplayer, A, 34), legal_id(A, 1, 34), not terminated(34), not moveR(oplayer, 2, 34).
:- not does(oplayer, A, 34),  tol_act(3, 34), legal(oplayer, A, 34), legal_id(A, 3, 34), not terminated(34), moveR(oplayer, 3, 34).
:- not does(oplayer, A, 34),  tol_act(3, 34), legal(oplayer, A, 34), legal_id(A, 2, 34), not terminated(34), not moveR(oplayer, 3, 34), moveR(oplayer, 2, 34).
:- not does(oplayer, A, 34),  tol_act(3, 34), legal(oplayer, A, 34), legal_id(A, 1, 34), not terminated(34), not moveR(oplayer, 3, 34), not moveR(oplayer, 2, 34).
:- not does(oplayer, A, 34),  tol_act(4, 34), legal(oplayer, A, 34), legal_id(A, 4, 34), not terminated(34), moveR(oplayer, 4, 34).
:- not does(oplayer, A, 34),  tol_act(4, 34), legal(oplayer, A, 34), legal_id(A, 3, 34), not terminated(34), not moveR(oplayer, 4, 34), moveR(oplayer, 3, 34).
:- not does(oplayer, A, 34),  tol_act(4, 34), legal(oplayer, A, 34), legal_id(A, 2, 34), not terminated(34), not moveR(oplayer, 4, 34), not moveR(oplayer, 3, 34), moveR(oplayer, 2, 34).
:- not does(oplayer, A, 34),  tol_act(4, 34), legal(oplayer, A, 34), legal_id(A, 1, 34), not terminated(34), not moveR(oplayer, 4, 34), not moveR(oplayer, 3, 34), not moveR(oplayer, 2, 34).
:- not does(oplayer, A, 34),  tol_act(5, 34), legal(oplayer, A, 34), legal_id(A, 5, 34), not terminated(34), moveR(oplayer, 5, 34).
:- not does(oplayer, A, 34),  tol_act(5, 34), legal(oplayer, A, 34), legal_id(A, 4, 34), not terminated(34), not moveR(oplayer, 5, 34), moveR(oplayer, 4, 34).
:- not does(oplayer, A, 34),  tol_act(5, 34), legal(oplayer, A, 34), legal_id(A, 3, 34), not terminated(34), not moveR(oplayer, 5, 34), not moveR(oplayer, 4, 34), moveR(oplayer, 3, 34).
:- not does(oplayer, A, 34),  tol_act(5, 34), legal(oplayer, A, 34), legal_id(A, 2, 34), not terminated(34), not moveR(oplayer, 5, 34), not moveR(oplayer, 4, 34), not moveR(oplayer, 3, 34), moveR(oplayer, 2, 34).
:- not does(oplayer, A, 34),  tol_act(5, 34), legal(oplayer, A, 34), legal_id(A, 1, 34), not terminated(34), not moveR(oplayer, 5, 34), not moveR(oplayer, 4, 34), not moveR(oplayer, 3, 34), not moveR(oplayer, 2, 34).
:- not does(oplayer, A, 34),  tol_act(6, 34), legal(oplayer, A, 34), legal_id(A, 6, 34), not terminated(34), moveR(oplayer, 6, 34).
:- not does(oplayer, A, 34),  tol_act(6, 34), legal(oplayer, A, 34), legal_id(A, 5, 34), not terminated(34), not moveR(oplayer, 6, 34), moveR(oplayer, 5, 34).
:- not does(oplayer, A, 34),  tol_act(6, 34), legal(oplayer, A, 34), legal_id(A, 4, 34), not terminated(34), not moveR(oplayer, 6, 34), not moveR(oplayer, 5, 34), moveR(oplayer, 4, 34).
:- not does(oplayer, A, 34),  tol_act(6, 34), legal(oplayer, A, 34), legal_id(A, 3, 34), not terminated(34), not moveR(oplayer, 6, 34), not moveR(oplayer, 5, 34), not moveR(oplayer, 4, 34), moveR(oplayer, 3, 34).
:- not does(oplayer, A, 34),  tol_act(6, 34), legal(oplayer, A, 34), legal_id(A, 2, 34), not terminated(34), not moveR(oplayer, 6, 34), not moveR(oplayer, 5, 34), not moveR(oplayer, 4, 34), not moveR(oplayer, 3, 34), moveR(oplayer, 2, 34).
:- not does(oplayer, A, 34),  tol_act(6, 34), legal(oplayer, A, 34), legal_id(A, 1, 34), not terminated(34), not moveR(oplayer, 6, 34), not moveR(oplayer, 5, 34), not moveR(oplayer, 4, 34), not moveR(oplayer, 3, 34), not moveR(oplayer, 2, 34).
:- not does(oplayer, A, 34),  tol_act(7, 34), legal(oplayer, A, 34), legal_id(A, 7, 34), not terminated(34), moveR(oplayer, 7, 34).
:- not does(oplayer, A, 34),  tol_act(7, 34), legal(oplayer, A, 34), legal_id(A, 6, 34), not terminated(34), not moveR(oplayer, 7, 34), moveR(oplayer, 6, 34).
:- not does(oplayer, A, 34),  tol_act(7, 34), legal(oplayer, A, 34), legal_id(A, 5, 34), not terminated(34), not moveR(oplayer, 7, 34), not moveR(oplayer, 6, 34), moveR(oplayer, 5, 34).
:- not does(oplayer, A, 34),  tol_act(7, 34), legal(oplayer, A, 34), legal_id(A, 4, 34), not terminated(34), not moveR(oplayer, 7, 34), not moveR(oplayer, 6, 34), not moveR(oplayer, 5, 34), moveR(oplayer, 4, 34).
:- not does(oplayer, A, 34),  tol_act(7, 34), legal(oplayer, A, 34), legal_id(A, 3, 34), not terminated(34), not moveR(oplayer, 7, 34), not moveR(oplayer, 6, 34), not moveR(oplayer, 5, 34), not moveR(oplayer, 4, 34), moveR(oplayer, 3, 34).
:- not does(oplayer, A, 34),  tol_act(7, 34), legal(oplayer, A, 34), legal_id(A, 2, 34), not terminated(34), not moveR(oplayer, 7, 34), not moveR(oplayer, 6, 34), not moveR(oplayer, 5, 34), not moveR(oplayer, 4, 34), not moveR(oplayer, 3, 34), moveR(oplayer, 2, 34).
:- not does(oplayer, A, 34),  tol_act(7, 34), legal(oplayer, A, 34), legal_id(A, 1, 34), not terminated(34), not moveR(oplayer, 7, 34), not moveR(oplayer, 6, 34), not moveR(oplayer, 5, 34), not moveR(oplayer, 4, 34), not moveR(oplayer, 3, 34), not moveR(oplayer, 2, 34).
{moveR(oplayer, I, 35)}:- ordom(I, 35), I > 1.
_chance(35 * 5 - 1, 1, I, moveR(oplayer, I, 35)) :- ordom(I, 35), I > 1.
{moveR(oplayer, I, 36)}:- ordom(I, 36), I > 1.
_chance(36 * 5 - 1, 1, I, moveR(oplayer, I, 36)) :- ordom(I, 36), I > 1.
:- not does(oplayer, A, 36),  tol_act(2, 36), legal(oplayer, A, 36), legal_id(A, 2, 36), not terminated(36), moveR(oplayer, 2, 36).
:- not does(oplayer, A, 36),  tol_act(2, 36), legal(oplayer, A, 36), legal_id(A, 1, 36), not terminated(36), not moveR(oplayer, 2, 36).
:- not does(oplayer, A, 36),  tol_act(3, 36), legal(oplayer, A, 36), legal_id(A, 3, 36), not terminated(36), moveR(oplayer, 3, 36).
:- not does(oplayer, A, 36),  tol_act(3, 36), legal(oplayer, A, 36), legal_id(A, 2, 36), not terminated(36), not moveR(oplayer, 3, 36), moveR(oplayer, 2, 36).
:- not does(oplayer, A, 36),  tol_act(3, 36), legal(oplayer, A, 36), legal_id(A, 1, 36), not terminated(36), not moveR(oplayer, 3, 36), not moveR(oplayer, 2, 36).
:- not does(oplayer, A, 36),  tol_act(4, 36), legal(oplayer, A, 36), legal_id(A, 4, 36), not terminated(36), moveR(oplayer, 4, 36).
:- not does(oplayer, A, 36),  tol_act(4, 36), legal(oplayer, A, 36), legal_id(A, 3, 36), not terminated(36), not moveR(oplayer, 4, 36), moveR(oplayer, 3, 36).
:- not does(oplayer, A, 36),  tol_act(4, 36), legal(oplayer, A, 36), legal_id(A, 2, 36), not terminated(36), not moveR(oplayer, 4, 36), not moveR(oplayer, 3, 36), moveR(oplayer, 2, 36).
:- not does(oplayer, A, 36),  tol_act(4, 36), legal(oplayer, A, 36), legal_id(A, 1, 36), not terminated(36), not moveR(oplayer, 4, 36), not moveR(oplayer, 3, 36), not moveR(oplayer, 2, 36).
:- not does(oplayer, A, 36),  tol_act(5, 36), legal(oplayer, A, 36), legal_id(A, 5, 36), not terminated(36), moveR(oplayer, 5, 36).
:- not does(oplayer, A, 36),  tol_act(5, 36), legal(oplayer, A, 36), legal_id(A, 4, 36), not terminated(36), not moveR(oplayer, 5, 36), moveR(oplayer, 4, 36).
:- not does(oplayer, A, 36),  tol_act(5, 36), legal(oplayer, A, 36), legal_id(A, 3, 36), not terminated(36), not moveR(oplayer, 5, 36), not moveR(oplayer, 4, 36), moveR(oplayer, 3, 36).
:- not does(oplayer, A, 36),  tol_act(5, 36), legal(oplayer, A, 36), legal_id(A, 2, 36), not terminated(36), not moveR(oplayer, 5, 36), not moveR(oplayer, 4, 36), not moveR(oplayer, 3, 36), moveR(oplayer, 2, 36).
:- not does(oplayer, A, 36),  tol_act(5, 36), legal(oplayer, A, 36), legal_id(A, 1, 36), not terminated(36), not moveR(oplayer, 5, 36), not moveR(oplayer, 4, 36), not moveR(oplayer, 3, 36), not moveR(oplayer, 2, 36).
:- not does(oplayer, A, 36),  tol_act(6, 36), legal(oplayer, A, 36), legal_id(A, 6, 36), not terminated(36), moveR(oplayer, 6, 36).
:- not does(oplayer, A, 36),  tol_act(6, 36), legal(oplayer, A, 36), legal_id(A, 5, 36), not terminated(36), not moveR(oplayer, 6, 36), moveR(oplayer, 5, 36).
:- not does(oplayer, A, 36),  tol_act(6, 36), legal(oplayer, A, 36), legal_id(A, 4, 36), not terminated(36), not moveR(oplayer, 6, 36), not moveR(oplayer, 5, 36), moveR(oplayer, 4, 36).
:- not does(oplayer, A, 36),  tol_act(6, 36), legal(oplayer, A, 36), legal_id(A, 3, 36), not terminated(36), not moveR(oplayer, 6, 36), not moveR(oplayer, 5, 36), not moveR(oplayer, 4, 36), moveR(oplayer, 3, 36).
:- not does(oplayer, A, 36),  tol_act(6, 36), legal(oplayer, A, 36), legal_id(A, 2, 36), not terminated(36), not moveR(oplayer, 6, 36), not moveR(oplayer, 5, 36), not moveR(oplayer, 4, 36), not moveR(oplayer, 3, 36), moveR(oplayer, 2, 36).
:- not does(oplayer, A, 36),  tol_act(6, 36), legal(oplayer, A, 36), legal_id(A, 1, 36), not terminated(36), not moveR(oplayer, 6, 36), not moveR(oplayer, 5, 36), not moveR(oplayer, 4, 36), not moveR(oplayer, 3, 36), not moveR(oplayer, 2, 36).
:- not does(oplayer, A, 36),  tol_act(7, 36), legal(oplayer, A, 36), legal_id(A, 7, 36), not terminated(36), moveR(oplayer, 7, 36).
:- not does(oplayer, A, 36),  tol_act(7, 36), legal(oplayer, A, 36), legal_id(A, 6, 36), not terminated(36), not moveR(oplayer, 7, 36), moveR(oplayer, 6, 36).
:- not does(oplayer, A, 36),  tol_act(7, 36), legal(oplayer, A, 36), legal_id(A, 5, 36), not terminated(36), not moveR(oplayer, 7, 36), not moveR(oplayer, 6, 36), moveR(oplayer, 5, 36).
:- not does(oplayer, A, 36),  tol_act(7, 36), legal(oplayer, A, 36), legal_id(A, 4, 36), not terminated(36), not moveR(oplayer, 7, 36), not moveR(oplayer, 6, 36), not moveR(oplayer, 5, 36), moveR(oplayer, 4, 36).
:- not does(oplayer, A, 36),  tol_act(7, 36), legal(oplayer, A, 36), legal_id(A, 3, 36), not terminated(36), not moveR(oplayer, 7, 36), not moveR(oplayer, 6, 36), not moveR(oplayer, 5, 36), not moveR(oplayer, 4, 36), moveR(oplayer, 3, 36).
:- not does(oplayer, A, 36),  tol_act(7, 36), legal(oplayer, A, 36), legal_id(A, 2, 36), not terminated(36), not moveR(oplayer, 7, 36), not moveR(oplayer, 6, 36), not moveR(oplayer, 5, 36), not moveR(oplayer, 4, 36), not moveR(oplayer, 3, 36), moveR(oplayer, 2, 36).
:- not does(oplayer, A, 36),  tol_act(7, 36), legal(oplayer, A, 36), legal_id(A, 1, 36), not terminated(36), not moveR(oplayer, 7, 36), not moveR(oplayer, 6, 36), not moveR(oplayer, 5, 36), not moveR(oplayer, 4, 36), not moveR(oplayer, 3, 36), not moveR(oplayer, 2, 36).

% Basic quantifiers
_exists(T * 5, does(oplayer, A, T)) :- mtdom(T), input(oplayer, A).
