front(noop). back(add(a,1)).
actord(noop, add(a,1)).

ordom(1..1,1).
ordom(1..2,2).
ordom(1..1,3).
ordom(1..2,4).
ordom(1..1,5).
ordom(1..2,6).
ordom(1..1,7).
ordom(1..2,8).
ordom(1..1,9).
ordom(1..2,10).
ordom(1..1,11).
ordom(1..2,12).
ordom(1..1,13).
ordom(1..2,14).
ordom(1..1,15).
ordom(1..2,16).
ordom(1..1,17).
ordom(1..2,18).
ordom(1..1,19).
ordom(1..2,20).
legal_id(A, 0, T) :- front(A), not legal(random, A, T), mtdom(T).
legal_id(A, 1, T) :- front(A), legal(random, A, T), mtdom(T).
legal_id(B, N, T) :- actord(A, B), legal(random, B, T), legal_id(A, N-1, T), ordom(N, T).
legal_id(B, N, T) :- actord(A, B), not legal(random, B, T), legal_id(A, N, T).
tol_act(N, T) :- legal_id(A, N, T), back(A).

{moveR(random, I, 1)}:- ordom(I, 1), I > 1.
_chance(1 * 5 - 1, 1, I, moveR(random, I, 1)) :- ordom(I, 1), I > 1.
{moveR(random, 1, 2)}.
_chance(9,1, 2, moveR(random,1,2)).
:- not does(random, A, 2), legal(random, A, 2), legal_id(A, 1, 2), not terminated(2)  , not moveR(random,1,2).
:- not does(random, A, 2), legal(random, A, 2), legal_id(A, 2, 2), not terminated(2)  , moveR(random,1,2).
{moveR(random, I, 3)}:- ordom(I, 3), I > 1.
_chance(3 * 5 - 1, 1, I, moveR(random, I, 3)) :- ordom(I, 3), I > 1.
{moveR(random, 1, 4)}.
_chance(19,1, 2, moveR(random,1,4)).
:- not does(random, A, 4), legal(random, A, 4), legal_id(A, 1, 4), not terminated(4)  , not moveR(random,1,4).
:- not does(random, A, 4), legal(random, A, 4), legal_id(A, 2, 4), not terminated(4)  , moveR(random,1,4).
{moveR(random, I, 5)}:- ordom(I, 5), I > 1.
_chance(5 * 5 - 1, 1, I, moveR(random, I, 5)) :- ordom(I, 5), I > 1.
{moveR(random, 1, 6)}.
_chance(29,1, 2, moveR(random,1,6)).
:- not does(random, A, 6), legal(random, A, 6), legal_id(A, 1, 6), not terminated(6)  , not moveR(random,1,6).
:- not does(random, A, 6), legal(random, A, 6), legal_id(A, 2, 6), not terminated(6)  , moveR(random,1,6).
{moveR(random, I, 7)}:- ordom(I, 7), I > 1.
_chance(7 * 5 - 1, 1, I, moveR(random, I, 7)) :- ordom(I, 7), I > 1.
{moveR(random, 1, 8)}.
_chance(39,1, 2, moveR(random,1,8)).
:- not does(random, A, 8), legal(random, A, 8), legal_id(A, 1, 8), not terminated(8)  , not moveR(random,1,8).
:- not does(random, A, 8), legal(random, A, 8), legal_id(A, 2, 8), not terminated(8)  , moveR(random,1,8).
{moveR(random, I, 9)}:- ordom(I, 9), I > 1.
_chance(9 * 5 - 1, 1, I, moveR(random, I, 9)) :- ordom(I, 9), I > 1.
{moveR(random, 1, 10)}.
_chance(49,1, 2, moveR(random,1,10)).
:- not does(random, A, 10), legal(random, A, 10), legal_id(A, 1, 10), not terminated(10)  , not moveR(random,1,10).
:- not does(random, A, 10), legal(random, A, 10), legal_id(A, 2, 10), not terminated(10)  , moveR(random,1,10).
{moveR(random, I, 11)}:- ordom(I, 11), I > 1.
_chance(11 * 5 - 1, 1, I, moveR(random, I, 11)) :- ordom(I, 11), I > 1.
{moveR(random, 1, 12)}.
_chance(59,1, 2, moveR(random,1,12)).
:- not does(random, A, 12), legal(random, A, 12), legal_id(A, 1, 12), not terminated(12)  , not moveR(random,1,12).
:- not does(random, A, 12), legal(random, A, 12), legal_id(A, 2, 12), not terminated(12)  , moveR(random,1,12).
{moveR(random, I, 13)}:- ordom(I, 13), I > 1.
_chance(13 * 5 - 1, 1, I, moveR(random, I, 13)) :- ordom(I, 13), I > 1.
{moveR(random, 1, 14)}.
_chance(69,1, 2, moveR(random,1,14)).
:- not does(random, A, 14), legal(random, A, 14), legal_id(A, 1, 14), not terminated(14)  , not moveR(random,1,14).
:- not does(random, A, 14), legal(random, A, 14), legal_id(A, 2, 14), not terminated(14)  , moveR(random,1,14).
{moveR(random, I, 15)}:- ordom(I, 15), I > 1.
_chance(15 * 5 - 1, 1, I, moveR(random, I, 15)) :- ordom(I, 15), I > 1.
{moveR(random, 1, 16)}.
_chance(79,1, 2, moveR(random,1,16)).
:- not does(random, A, 16), legal(random, A, 16), legal_id(A, 1, 16), not terminated(16)  , not moveR(random,1,16).
:- not does(random, A, 16), legal(random, A, 16), legal_id(A, 2, 16), not terminated(16)  , moveR(random,1,16).
{moveR(random, I, 17)}:- ordom(I, 17), I > 1.
_chance(17 * 5 - 1, 1, I, moveR(random, I, 17)) :- ordom(I, 17), I > 1.
{moveR(random, 1, 18)}.
_chance(89,1, 2, moveR(random,1,18)).
:- not does(random, A, 18), legal(random, A, 18), legal_id(A, 1, 18), not terminated(18)  , not moveR(random,1,18).
:- not does(random, A, 18), legal(random, A, 18), legal_id(A, 2, 18), not terminated(18)  , moveR(random,1,18).
{moveR(random, I, 19)}:- ordom(I, 19), I > 1.
_chance(19 * 5 - 1, 1, I, moveR(random, I, 19)) :- ordom(I, 19), I > 1.
{moveR(random, 1, 20)}.
_chance(99,1, 2, moveR(random,1,20)).
:- not does(random, A, 20), legal(random, A, 20), legal_id(A, 1, 20), not terminated(20)  , not moveR(random,1,20).
:- not does(random, A, 20), legal(random, A, 20), legal_id(A, 2, 20), not terminated(20)  , moveR(random,1,20).

% Basic quantifiers
_exists(T * 5, does(random, A, T)) :- mtdom(T), input(random, A).
