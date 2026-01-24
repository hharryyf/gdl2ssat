ldom(oplayer, 1..2).
% log-encoding
{moveL(oplayer, M, 3)} :-  ldom(oplayer, M).
{moveL(oplayer, M, 7)} :-  ldom(oplayer, M).
{moveL(oplayer, M, 11)} :-  ldom(oplayer, M).
{moveL(oplayer, M, 15)} :-  ldom(oplayer, M).
{moveL(oplayer, M, 19)} :-  ldom(oplayer, M).
:- not does(oplayer, reduce(a,2), 3), not moveL(oplayer, 1, 3), not moveL(oplayer, 2, 3), legal(oplayer, reduce(a,2), 3), not terminated(3).
:- not does(oplayer, noop, 3), moveL(oplayer, 1, 3), not moveL(oplayer, 2, 3), legal(oplayer, noop, 3), not terminated(3).
:- not does(oplayer, reduce(a,1), 3), not moveL(oplayer, 1, 3), moveL(oplayer, 2, 3), legal(oplayer, reduce(a,1), 3), not terminated(3).
:- not does(oplayer, reduce(a,2), 7), not moveL(oplayer, 1, 7), not moveL(oplayer, 2, 7), legal(oplayer, reduce(a,2), 7), not terminated(7).
:- not does(oplayer, noop, 7), moveL(oplayer, 1, 7), not moveL(oplayer, 2, 7), legal(oplayer, noop, 7), not terminated(7).
:- not does(oplayer, reduce(a,1), 7), not moveL(oplayer, 1, 7), moveL(oplayer, 2, 7), legal(oplayer, reduce(a,1), 7), not terminated(7).
:- not does(oplayer, reduce(a,2), 11), not moveL(oplayer, 1, 11), not moveL(oplayer, 2, 11), legal(oplayer, reduce(a,2), 11), not terminated(11).
:- not does(oplayer, noop, 11), moveL(oplayer, 1, 11), not moveL(oplayer, 2, 11), legal(oplayer, noop, 11), not terminated(11).
:- not does(oplayer, reduce(a,1), 11), not moveL(oplayer, 1, 11), moveL(oplayer, 2, 11), legal(oplayer, reduce(a,1), 11), not terminated(11).
:- not does(oplayer, reduce(a,2), 15), not moveL(oplayer, 1, 15), not moveL(oplayer, 2, 15), legal(oplayer, reduce(a,2), 15), not terminated(15).
:- not does(oplayer, noop, 15), moveL(oplayer, 1, 15), not moveL(oplayer, 2, 15), legal(oplayer, noop, 15), not terminated(15).
:- not does(oplayer, reduce(a,1), 15), not moveL(oplayer, 1, 15), moveL(oplayer, 2, 15), legal(oplayer, reduce(a,1), 15), not terminated(15).
:- not does(oplayer, reduce(a,2), 19), not moveL(oplayer, 1, 19), not moveL(oplayer, 2, 19), legal(oplayer, reduce(a,2), 19), not terminated(19).
:- not does(oplayer, noop, 19), moveL(oplayer, 1, 19), not moveL(oplayer, 2, 19), legal(oplayer, noop, 19), not terminated(19).
:- not does(oplayer, reduce(a,1), 19), not moveL(oplayer, 1, 19), moveL(oplayer, 2, 19), legal(oplayer, reduce(a,1), 19), not terminated(19).

_forall(3 * 5 - 3, moveL(oplayer, I, 3)) :- ldom(oplayer, I).
_forall(7 * 5 - 3, moveL(oplayer, I, 7)) :- ldom(oplayer, I).
_forall(11 * 5 - 3, moveL(oplayer, I, 11)) :- ldom(oplayer, I).
_forall(15 * 5 - 3, moveL(oplayer, I, 15)) :- ldom(oplayer, I).
_forall(19 * 5 - 3, moveL(oplayer, I, 19)) :- ldom(oplayer, I).
_exists(T * 5 - 2, does(oplayer, A, T)) :- mtdom(T), input(oplayer, A).
