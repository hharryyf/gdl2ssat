ldom(oplayer, 1..3).
% log-encoding
{moveL(oplayer, M, 2)} :-  ldom(oplayer, M).
{moveL(oplayer, M, 5)} :-  ldom(oplayer, M).
{moveL(oplayer, M, 8)} :-  ldom(oplayer, M).
{moveL(oplayer, M, 11)} :-  ldom(oplayer, M).
{moveL(oplayer, M, 14)} :-  ldom(oplayer, M).
:- not does(oplayer, drop(1), 2), not moveL(oplayer, 1, 2), not moveL(oplayer, 2, 2), not moveL(oplayer, 3, 2), legal(oplayer, drop(1), 2), not terminated(2).
:- not does(oplayer, drop(2), 2), moveL(oplayer, 1, 2), not moveL(oplayer, 2, 2), not moveL(oplayer, 3, 2), legal(oplayer, drop(2), 2), not terminated(2).
:- not does(oplayer, drop(3), 2), not moveL(oplayer, 1, 2), moveL(oplayer, 2, 2), not moveL(oplayer, 3, 2), legal(oplayer, drop(3), 2), not terminated(2).
:- not does(oplayer, drop(4), 2), moveL(oplayer, 1, 2), moveL(oplayer, 2, 2), not moveL(oplayer, 3, 2), legal(oplayer, drop(4), 2), not terminated(2).
:- not does(oplayer, noop, 2), not moveL(oplayer, 1, 2), not moveL(oplayer, 2, 2), moveL(oplayer, 3, 2), legal(oplayer, noop, 2), not terminated(2).
:- not does(oplayer, drop(1), 5), not moveL(oplayer, 1, 5), not moveL(oplayer, 2, 5), not moveL(oplayer, 3, 5), legal(oplayer, drop(1), 5), not terminated(5).
:- not does(oplayer, drop(2), 5), moveL(oplayer, 1, 5), not moveL(oplayer, 2, 5), not moveL(oplayer, 3, 5), legal(oplayer, drop(2), 5), not terminated(5).
:- not does(oplayer, drop(3), 5), not moveL(oplayer, 1, 5), moveL(oplayer, 2, 5), not moveL(oplayer, 3, 5), legal(oplayer, drop(3), 5), not terminated(5).
:- not does(oplayer, drop(4), 5), moveL(oplayer, 1, 5), moveL(oplayer, 2, 5), not moveL(oplayer, 3, 5), legal(oplayer, drop(4), 5), not terminated(5).
:- not does(oplayer, noop, 5), not moveL(oplayer, 1, 5), not moveL(oplayer, 2, 5), moveL(oplayer, 3, 5), legal(oplayer, noop, 5), not terminated(5).
:- not does(oplayer, drop(1), 8), not moveL(oplayer, 1, 8), not moveL(oplayer, 2, 8), not moveL(oplayer, 3, 8), legal(oplayer, drop(1), 8), not terminated(8).
:- not does(oplayer, drop(2), 8), moveL(oplayer, 1, 8), not moveL(oplayer, 2, 8), not moveL(oplayer, 3, 8), legal(oplayer, drop(2), 8), not terminated(8).
:- not does(oplayer, drop(3), 8), not moveL(oplayer, 1, 8), moveL(oplayer, 2, 8), not moveL(oplayer, 3, 8), legal(oplayer, drop(3), 8), not terminated(8).
:- not does(oplayer, drop(4), 8), moveL(oplayer, 1, 8), moveL(oplayer, 2, 8), not moveL(oplayer, 3, 8), legal(oplayer, drop(4), 8), not terminated(8).
:- not does(oplayer, noop, 8), not moveL(oplayer, 1, 8), not moveL(oplayer, 2, 8), moveL(oplayer, 3, 8), legal(oplayer, noop, 8), not terminated(8).
:- not does(oplayer, drop(1), 11), not moveL(oplayer, 1, 11), not moveL(oplayer, 2, 11), not moveL(oplayer, 3, 11), legal(oplayer, drop(1), 11), not terminated(11).
:- not does(oplayer, drop(2), 11), moveL(oplayer, 1, 11), not moveL(oplayer, 2, 11), not moveL(oplayer, 3, 11), legal(oplayer, drop(2), 11), not terminated(11).
:- not does(oplayer, drop(3), 11), not moveL(oplayer, 1, 11), moveL(oplayer, 2, 11), not moveL(oplayer, 3, 11), legal(oplayer, drop(3), 11), not terminated(11).
:- not does(oplayer, drop(4), 11), moveL(oplayer, 1, 11), moveL(oplayer, 2, 11), not moveL(oplayer, 3, 11), legal(oplayer, drop(4), 11), not terminated(11).
:- not does(oplayer, noop, 11), not moveL(oplayer, 1, 11), not moveL(oplayer, 2, 11), moveL(oplayer, 3, 11), legal(oplayer, noop, 11), not terminated(11).
:- not does(oplayer, drop(1), 14), not moveL(oplayer, 1, 14), not moveL(oplayer, 2, 14), not moveL(oplayer, 3, 14), legal(oplayer, drop(1), 14), not terminated(14).
:- not does(oplayer, drop(2), 14), moveL(oplayer, 1, 14), not moveL(oplayer, 2, 14), not moveL(oplayer, 3, 14), legal(oplayer, drop(2), 14), not terminated(14).
:- not does(oplayer, drop(3), 14), not moveL(oplayer, 1, 14), moveL(oplayer, 2, 14), not moveL(oplayer, 3, 14), legal(oplayer, drop(3), 14), not terminated(14).
:- not does(oplayer, drop(4), 14), moveL(oplayer, 1, 14), moveL(oplayer, 2, 14), not moveL(oplayer, 3, 14), legal(oplayer, drop(4), 14), not terminated(14).
:- not does(oplayer, noop, 14), not moveL(oplayer, 1, 14), not moveL(oplayer, 2, 14), moveL(oplayer, 3, 14), legal(oplayer, noop, 14), not terminated(14).

_forall(2 * 5 - 3, moveL(oplayer, I, 2)) :- ldom(oplayer, I).
_forall(5 * 5 - 3, moveL(oplayer, I, 5)) :- ldom(oplayer, I).
_forall(8 * 5 - 3, moveL(oplayer, I, 8)) :- ldom(oplayer, I).
_forall(11 * 5 - 3, moveL(oplayer, I, 11)) :- ldom(oplayer, I).
_forall(14 * 5 - 3, moveL(oplayer, I, 14)) :- ldom(oplayer, I).
_exists(T * 5 - 2, does(oplayer, A, T)) :- mtdom(T), input(oplayer, A).
