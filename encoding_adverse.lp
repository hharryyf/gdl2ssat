ldom(oplayer, 1..5).
% log-encoding
{moveL(oplayer, M, 2)} :-  ldom(oplayer, M).
{moveL(oplayer, M, 4)} :-  ldom(oplayer, M).
{moveL(oplayer, M, 6)} :-  ldom(oplayer, M).
{moveL(oplayer, M, 8)} :-  ldom(oplayer, M).
{moveL(oplayer, M, 10)} :-  ldom(oplayer, M).
{moveL(oplayer, M, 12)} :-  ldom(oplayer, M).
{moveL(oplayer, M, 14)} :-  ldom(oplayer, M).
{moveL(oplayer, M, 16)} :-  ldom(oplayer, M).
does(oplayer, mark(1,1), 2) :- not moveL(oplayer, 1, 2), not moveL(oplayer, 2, 2), not moveL(oplayer, 3, 2), not moveL(oplayer, 4, 2), not moveL(oplayer, 5, 2), legal(oplayer, mark(1,1), 2), not terminated(2).
does(oplayer, mark(1,2), 2) :- moveL(oplayer, 1, 2), not moveL(oplayer, 2, 2), not moveL(oplayer, 3, 2), not moveL(oplayer, 4, 2), not moveL(oplayer, 5, 2), legal(oplayer, mark(1,2), 2), not terminated(2).
does(oplayer, mark(1,3), 2) :- not moveL(oplayer, 1, 2), moveL(oplayer, 2, 2), not moveL(oplayer, 3, 2), not moveL(oplayer, 4, 2), not moveL(oplayer, 5, 2), legal(oplayer, mark(1,3), 2), not terminated(2).
does(oplayer, mark(1,4), 2) :- moveL(oplayer, 1, 2), moveL(oplayer, 2, 2), not moveL(oplayer, 3, 2), not moveL(oplayer, 4, 2), not moveL(oplayer, 5, 2), legal(oplayer, mark(1,4), 2), not terminated(2).
does(oplayer, mark(2,1), 2) :- not moveL(oplayer, 1, 2), not moveL(oplayer, 2, 2), moveL(oplayer, 3, 2), not moveL(oplayer, 4, 2), not moveL(oplayer, 5, 2), legal(oplayer, mark(2,1), 2), not terminated(2).
does(oplayer, mark(2,2), 2) :- moveL(oplayer, 1, 2), not moveL(oplayer, 2, 2), moveL(oplayer, 3, 2), not moveL(oplayer, 4, 2), not moveL(oplayer, 5, 2), legal(oplayer, mark(2,2), 2), not terminated(2).
does(oplayer, mark(2,3), 2) :- not moveL(oplayer, 1, 2), moveL(oplayer, 2, 2), moveL(oplayer, 3, 2), not moveL(oplayer, 4, 2), not moveL(oplayer, 5, 2), legal(oplayer, mark(2,3), 2), not terminated(2).
does(oplayer, mark(2,4), 2) :- moveL(oplayer, 1, 2), moveL(oplayer, 2, 2), moveL(oplayer, 3, 2), not moveL(oplayer, 4, 2), not moveL(oplayer, 5, 2), legal(oplayer, mark(2,4), 2), not terminated(2).
does(oplayer, mark(3,1), 2) :- not moveL(oplayer, 1, 2), not moveL(oplayer, 2, 2), not moveL(oplayer, 3, 2), moveL(oplayer, 4, 2), not moveL(oplayer, 5, 2), legal(oplayer, mark(3,1), 2), not terminated(2).
does(oplayer, mark(3,2), 2) :- moveL(oplayer, 1, 2), not moveL(oplayer, 2, 2), not moveL(oplayer, 3, 2), moveL(oplayer, 4, 2), not moveL(oplayer, 5, 2), legal(oplayer, mark(3,2), 2), not terminated(2).
does(oplayer, mark(3,3), 2) :- not moveL(oplayer, 1, 2), moveL(oplayer, 2, 2), not moveL(oplayer, 3, 2), moveL(oplayer, 4, 2), not moveL(oplayer, 5, 2), legal(oplayer, mark(3,3), 2), not terminated(2).
does(oplayer, mark(3,4), 2) :- moveL(oplayer, 1, 2), moveL(oplayer, 2, 2), not moveL(oplayer, 3, 2), moveL(oplayer, 4, 2), not moveL(oplayer, 5, 2), legal(oplayer, mark(3,4), 2), not terminated(2).
does(oplayer, mark(4,1), 2) :- not moveL(oplayer, 1, 2), not moveL(oplayer, 2, 2), moveL(oplayer, 3, 2), moveL(oplayer, 4, 2), not moveL(oplayer, 5, 2), legal(oplayer, mark(4,1), 2), not terminated(2).
does(oplayer, mark(4,2), 2) :- moveL(oplayer, 1, 2), not moveL(oplayer, 2, 2), moveL(oplayer, 3, 2), moveL(oplayer, 4, 2), not moveL(oplayer, 5, 2), legal(oplayer, mark(4,2), 2), not terminated(2).
does(oplayer, mark(4,3), 2) :- not moveL(oplayer, 1, 2), moveL(oplayer, 2, 2), moveL(oplayer, 3, 2), moveL(oplayer, 4, 2), not moveL(oplayer, 5, 2), legal(oplayer, mark(4,3), 2), not terminated(2).
does(oplayer, mark(4,4), 2) :- moveL(oplayer, 1, 2), moveL(oplayer, 2, 2), moveL(oplayer, 3, 2), moveL(oplayer, 4, 2), not moveL(oplayer, 5, 2), legal(oplayer, mark(4,4), 2), not terminated(2).
does(oplayer, noop, 2) :- not moveL(oplayer, 1, 2), not moveL(oplayer, 2, 2), not moveL(oplayer, 3, 2), not moveL(oplayer, 4, 2), moveL(oplayer, 5, 2), legal(oplayer, noop, 2), not terminated(2).
does(oplayer, mark(1,1), 4) :- not moveL(oplayer, 1, 4), not moveL(oplayer, 2, 4), not moveL(oplayer, 3, 4), not moveL(oplayer, 4, 4), not moveL(oplayer, 5, 4), legal(oplayer, mark(1,1), 4), not terminated(4).
does(oplayer, mark(1,2), 4) :- moveL(oplayer, 1, 4), not moveL(oplayer, 2, 4), not moveL(oplayer, 3, 4), not moveL(oplayer, 4, 4), not moveL(oplayer, 5, 4), legal(oplayer, mark(1,2), 4), not terminated(4).
does(oplayer, mark(1,3), 4) :- not moveL(oplayer, 1, 4), moveL(oplayer, 2, 4), not moveL(oplayer, 3, 4), not moveL(oplayer, 4, 4), not moveL(oplayer, 5, 4), legal(oplayer, mark(1,3), 4), not terminated(4).
does(oplayer, mark(1,4), 4) :- moveL(oplayer, 1, 4), moveL(oplayer, 2, 4), not moveL(oplayer, 3, 4), not moveL(oplayer, 4, 4), not moveL(oplayer, 5, 4), legal(oplayer, mark(1,4), 4), not terminated(4).
does(oplayer, mark(2,1), 4) :- not moveL(oplayer, 1, 4), not moveL(oplayer, 2, 4), moveL(oplayer, 3, 4), not moveL(oplayer, 4, 4), not moveL(oplayer, 5, 4), legal(oplayer, mark(2,1), 4), not terminated(4).
does(oplayer, mark(2,2), 4) :- moveL(oplayer, 1, 4), not moveL(oplayer, 2, 4), moveL(oplayer, 3, 4), not moveL(oplayer, 4, 4), not moveL(oplayer, 5, 4), legal(oplayer, mark(2,2), 4), not terminated(4).
does(oplayer, mark(2,3), 4) :- not moveL(oplayer, 1, 4), moveL(oplayer, 2, 4), moveL(oplayer, 3, 4), not moveL(oplayer, 4, 4), not moveL(oplayer, 5, 4), legal(oplayer, mark(2,3), 4), not terminated(4).
does(oplayer, mark(2,4), 4) :- moveL(oplayer, 1, 4), moveL(oplayer, 2, 4), moveL(oplayer, 3, 4), not moveL(oplayer, 4, 4), not moveL(oplayer, 5, 4), legal(oplayer, mark(2,4), 4), not terminated(4).
does(oplayer, mark(3,1), 4) :- not moveL(oplayer, 1, 4), not moveL(oplayer, 2, 4), not moveL(oplayer, 3, 4), moveL(oplayer, 4, 4), not moveL(oplayer, 5, 4), legal(oplayer, mark(3,1), 4), not terminated(4).
does(oplayer, mark(3,2), 4) :- moveL(oplayer, 1, 4), not moveL(oplayer, 2, 4), not moveL(oplayer, 3, 4), moveL(oplayer, 4, 4), not moveL(oplayer, 5, 4), legal(oplayer, mark(3,2), 4), not terminated(4).
does(oplayer, mark(3,3), 4) :- not moveL(oplayer, 1, 4), moveL(oplayer, 2, 4), not moveL(oplayer, 3, 4), moveL(oplayer, 4, 4), not moveL(oplayer, 5, 4), legal(oplayer, mark(3,3), 4), not terminated(4).
does(oplayer, mark(3,4), 4) :- moveL(oplayer, 1, 4), moveL(oplayer, 2, 4), not moveL(oplayer, 3, 4), moveL(oplayer, 4, 4), not moveL(oplayer, 5, 4), legal(oplayer, mark(3,4), 4), not terminated(4).
does(oplayer, mark(4,1), 4) :- not moveL(oplayer, 1, 4), not moveL(oplayer, 2, 4), moveL(oplayer, 3, 4), moveL(oplayer, 4, 4), not moveL(oplayer, 5, 4), legal(oplayer, mark(4,1), 4), not terminated(4).
does(oplayer, mark(4,2), 4) :- moveL(oplayer, 1, 4), not moveL(oplayer, 2, 4), moveL(oplayer, 3, 4), moveL(oplayer, 4, 4), not moveL(oplayer, 5, 4), legal(oplayer, mark(4,2), 4), not terminated(4).
does(oplayer, mark(4,3), 4) :- not moveL(oplayer, 1, 4), moveL(oplayer, 2, 4), moveL(oplayer, 3, 4), moveL(oplayer, 4, 4), not moveL(oplayer, 5, 4), legal(oplayer, mark(4,3), 4), not terminated(4).
does(oplayer, mark(4,4), 4) :- moveL(oplayer, 1, 4), moveL(oplayer, 2, 4), moveL(oplayer, 3, 4), moveL(oplayer, 4, 4), not moveL(oplayer, 5, 4), legal(oplayer, mark(4,4), 4), not terminated(4).
does(oplayer, noop, 4) :- not moveL(oplayer, 1, 4), not moveL(oplayer, 2, 4), not moveL(oplayer, 3, 4), not moveL(oplayer, 4, 4), moveL(oplayer, 5, 4), legal(oplayer, noop, 4), not terminated(4).
does(oplayer, mark(1,1), 6) :- not moveL(oplayer, 1, 6), not moveL(oplayer, 2, 6), not moveL(oplayer, 3, 6), not moveL(oplayer, 4, 6), not moveL(oplayer, 5, 6), legal(oplayer, mark(1,1), 6), not terminated(6).
does(oplayer, mark(1,2), 6) :- moveL(oplayer, 1, 6), not moveL(oplayer, 2, 6), not moveL(oplayer, 3, 6), not moveL(oplayer, 4, 6), not moveL(oplayer, 5, 6), legal(oplayer, mark(1,2), 6), not terminated(6).
does(oplayer, mark(1,3), 6) :- not moveL(oplayer, 1, 6), moveL(oplayer, 2, 6), not moveL(oplayer, 3, 6), not moveL(oplayer, 4, 6), not moveL(oplayer, 5, 6), legal(oplayer, mark(1,3), 6), not terminated(6).
does(oplayer, mark(1,4), 6) :- moveL(oplayer, 1, 6), moveL(oplayer, 2, 6), not moveL(oplayer, 3, 6), not moveL(oplayer, 4, 6), not moveL(oplayer, 5, 6), legal(oplayer, mark(1,4), 6), not terminated(6).
does(oplayer, mark(2,1), 6) :- not moveL(oplayer, 1, 6), not moveL(oplayer, 2, 6), moveL(oplayer, 3, 6), not moveL(oplayer, 4, 6), not moveL(oplayer, 5, 6), legal(oplayer, mark(2,1), 6), not terminated(6).
does(oplayer, mark(2,2), 6) :- moveL(oplayer, 1, 6), not moveL(oplayer, 2, 6), moveL(oplayer, 3, 6), not moveL(oplayer, 4, 6), not moveL(oplayer, 5, 6), legal(oplayer, mark(2,2), 6), not terminated(6).
does(oplayer, mark(2,3), 6) :- not moveL(oplayer, 1, 6), moveL(oplayer, 2, 6), moveL(oplayer, 3, 6), not moveL(oplayer, 4, 6), not moveL(oplayer, 5, 6), legal(oplayer, mark(2,3), 6), not terminated(6).
does(oplayer, mark(2,4), 6) :- moveL(oplayer, 1, 6), moveL(oplayer, 2, 6), moveL(oplayer, 3, 6), not moveL(oplayer, 4, 6), not moveL(oplayer, 5, 6), legal(oplayer, mark(2,4), 6), not terminated(6).
does(oplayer, mark(3,1), 6) :- not moveL(oplayer, 1, 6), not moveL(oplayer, 2, 6), not moveL(oplayer, 3, 6), moveL(oplayer, 4, 6), not moveL(oplayer, 5, 6), legal(oplayer, mark(3,1), 6), not terminated(6).
does(oplayer, mark(3,2), 6) :- moveL(oplayer, 1, 6), not moveL(oplayer, 2, 6), not moveL(oplayer, 3, 6), moveL(oplayer, 4, 6), not moveL(oplayer, 5, 6), legal(oplayer, mark(3,2), 6), not terminated(6).
does(oplayer, mark(3,3), 6) :- not moveL(oplayer, 1, 6), moveL(oplayer, 2, 6), not moveL(oplayer, 3, 6), moveL(oplayer, 4, 6), not moveL(oplayer, 5, 6), legal(oplayer, mark(3,3), 6), not terminated(6).
does(oplayer, mark(3,4), 6) :- moveL(oplayer, 1, 6), moveL(oplayer, 2, 6), not moveL(oplayer, 3, 6), moveL(oplayer, 4, 6), not moveL(oplayer, 5, 6), legal(oplayer, mark(3,4), 6), not terminated(6).
does(oplayer, mark(4,1), 6) :- not moveL(oplayer, 1, 6), not moveL(oplayer, 2, 6), moveL(oplayer, 3, 6), moveL(oplayer, 4, 6), not moveL(oplayer, 5, 6), legal(oplayer, mark(4,1), 6), not terminated(6).
does(oplayer, mark(4,2), 6) :- moveL(oplayer, 1, 6), not moveL(oplayer, 2, 6), moveL(oplayer, 3, 6), moveL(oplayer, 4, 6), not moveL(oplayer, 5, 6), legal(oplayer, mark(4,2), 6), not terminated(6).
does(oplayer, mark(4,3), 6) :- not moveL(oplayer, 1, 6), moveL(oplayer, 2, 6), moveL(oplayer, 3, 6), moveL(oplayer, 4, 6), not moveL(oplayer, 5, 6), legal(oplayer, mark(4,3), 6), not terminated(6).
does(oplayer, mark(4,4), 6) :- moveL(oplayer, 1, 6), moveL(oplayer, 2, 6), moveL(oplayer, 3, 6), moveL(oplayer, 4, 6), not moveL(oplayer, 5, 6), legal(oplayer, mark(4,4), 6), not terminated(6).
does(oplayer, noop, 6) :- not moveL(oplayer, 1, 6), not moveL(oplayer, 2, 6), not moveL(oplayer, 3, 6), not moveL(oplayer, 4, 6), moveL(oplayer, 5, 6), legal(oplayer, noop, 6), not terminated(6).
does(oplayer, mark(1,1), 8) :- not moveL(oplayer, 1, 8), not moveL(oplayer, 2, 8), not moveL(oplayer, 3, 8), not moveL(oplayer, 4, 8), not moveL(oplayer, 5, 8), legal(oplayer, mark(1,1), 8), not terminated(8).
does(oplayer, mark(1,2), 8) :- moveL(oplayer, 1, 8), not moveL(oplayer, 2, 8), not moveL(oplayer, 3, 8), not moveL(oplayer, 4, 8), not moveL(oplayer, 5, 8), legal(oplayer, mark(1,2), 8), not terminated(8).
does(oplayer, mark(1,3), 8) :- not moveL(oplayer, 1, 8), moveL(oplayer, 2, 8), not moveL(oplayer, 3, 8), not moveL(oplayer, 4, 8), not moveL(oplayer, 5, 8), legal(oplayer, mark(1,3), 8), not terminated(8).
does(oplayer, mark(1,4), 8) :- moveL(oplayer, 1, 8), moveL(oplayer, 2, 8), not moveL(oplayer, 3, 8), not moveL(oplayer, 4, 8), not moveL(oplayer, 5, 8), legal(oplayer, mark(1,4), 8), not terminated(8).
does(oplayer, mark(2,1), 8) :- not moveL(oplayer, 1, 8), not moveL(oplayer, 2, 8), moveL(oplayer, 3, 8), not moveL(oplayer, 4, 8), not moveL(oplayer, 5, 8), legal(oplayer, mark(2,1), 8), not terminated(8).
does(oplayer, mark(2,2), 8) :- moveL(oplayer, 1, 8), not moveL(oplayer, 2, 8), moveL(oplayer, 3, 8), not moveL(oplayer, 4, 8), not moveL(oplayer, 5, 8), legal(oplayer, mark(2,2), 8), not terminated(8).
does(oplayer, mark(2,3), 8) :- not moveL(oplayer, 1, 8), moveL(oplayer, 2, 8), moveL(oplayer, 3, 8), not moveL(oplayer, 4, 8), not moveL(oplayer, 5, 8), legal(oplayer, mark(2,3), 8), not terminated(8).
does(oplayer, mark(2,4), 8) :- moveL(oplayer, 1, 8), moveL(oplayer, 2, 8), moveL(oplayer, 3, 8), not moveL(oplayer, 4, 8), not moveL(oplayer, 5, 8), legal(oplayer, mark(2,4), 8), not terminated(8).
does(oplayer, mark(3,1), 8) :- not moveL(oplayer, 1, 8), not moveL(oplayer, 2, 8), not moveL(oplayer, 3, 8), moveL(oplayer, 4, 8), not moveL(oplayer, 5, 8), legal(oplayer, mark(3,1), 8), not terminated(8).
does(oplayer, mark(3,2), 8) :- moveL(oplayer, 1, 8), not moveL(oplayer, 2, 8), not moveL(oplayer, 3, 8), moveL(oplayer, 4, 8), not moveL(oplayer, 5, 8), legal(oplayer, mark(3,2), 8), not terminated(8).
does(oplayer, mark(3,3), 8) :- not moveL(oplayer, 1, 8), moveL(oplayer, 2, 8), not moveL(oplayer, 3, 8), moveL(oplayer, 4, 8), not moveL(oplayer, 5, 8), legal(oplayer, mark(3,3), 8), not terminated(8).
does(oplayer, mark(3,4), 8) :- moveL(oplayer, 1, 8), moveL(oplayer, 2, 8), not moveL(oplayer, 3, 8), moveL(oplayer, 4, 8), not moveL(oplayer, 5, 8), legal(oplayer, mark(3,4), 8), not terminated(8).
does(oplayer, mark(4,1), 8) :- not moveL(oplayer, 1, 8), not moveL(oplayer, 2, 8), moveL(oplayer, 3, 8), moveL(oplayer, 4, 8), not moveL(oplayer, 5, 8), legal(oplayer, mark(4,1), 8), not terminated(8).
does(oplayer, mark(4,2), 8) :- moveL(oplayer, 1, 8), not moveL(oplayer, 2, 8), moveL(oplayer, 3, 8), moveL(oplayer, 4, 8), not moveL(oplayer, 5, 8), legal(oplayer, mark(4,2), 8), not terminated(8).
does(oplayer, mark(4,3), 8) :- not moveL(oplayer, 1, 8), moveL(oplayer, 2, 8), moveL(oplayer, 3, 8), moveL(oplayer, 4, 8), not moveL(oplayer, 5, 8), legal(oplayer, mark(4,3), 8), not terminated(8).
does(oplayer, mark(4,4), 8) :- moveL(oplayer, 1, 8), moveL(oplayer, 2, 8), moveL(oplayer, 3, 8), moveL(oplayer, 4, 8), not moveL(oplayer, 5, 8), legal(oplayer, mark(4,4), 8), not terminated(8).
does(oplayer, noop, 8) :- not moveL(oplayer, 1, 8), not moveL(oplayer, 2, 8), not moveL(oplayer, 3, 8), not moveL(oplayer, 4, 8), moveL(oplayer, 5, 8), legal(oplayer, noop, 8), not terminated(8).
does(oplayer, mark(1,1), 10) :- not moveL(oplayer, 1, 10), not moveL(oplayer, 2, 10), not moveL(oplayer, 3, 10), not moveL(oplayer, 4, 10), not moveL(oplayer, 5, 10), legal(oplayer, mark(1,1), 10), not terminated(10).
does(oplayer, mark(1,2), 10) :- moveL(oplayer, 1, 10), not moveL(oplayer, 2, 10), not moveL(oplayer, 3, 10), not moveL(oplayer, 4, 10), not moveL(oplayer, 5, 10), legal(oplayer, mark(1,2), 10), not terminated(10).
does(oplayer, mark(1,3), 10) :- not moveL(oplayer, 1, 10), moveL(oplayer, 2, 10), not moveL(oplayer, 3, 10), not moveL(oplayer, 4, 10), not moveL(oplayer, 5, 10), legal(oplayer, mark(1,3), 10), not terminated(10).
does(oplayer, mark(1,4), 10) :- moveL(oplayer, 1, 10), moveL(oplayer, 2, 10), not moveL(oplayer, 3, 10), not moveL(oplayer, 4, 10), not moveL(oplayer, 5, 10), legal(oplayer, mark(1,4), 10), not terminated(10).
does(oplayer, mark(2,1), 10) :- not moveL(oplayer, 1, 10), not moveL(oplayer, 2, 10), moveL(oplayer, 3, 10), not moveL(oplayer, 4, 10), not moveL(oplayer, 5, 10), legal(oplayer, mark(2,1), 10), not terminated(10).
does(oplayer, mark(2,2), 10) :- moveL(oplayer, 1, 10), not moveL(oplayer, 2, 10), moveL(oplayer, 3, 10), not moveL(oplayer, 4, 10), not moveL(oplayer, 5, 10), legal(oplayer, mark(2,2), 10), not terminated(10).
does(oplayer, mark(2,3), 10) :- not moveL(oplayer, 1, 10), moveL(oplayer, 2, 10), moveL(oplayer, 3, 10), not moveL(oplayer, 4, 10), not moveL(oplayer, 5, 10), legal(oplayer, mark(2,3), 10), not terminated(10).
does(oplayer, mark(2,4), 10) :- moveL(oplayer, 1, 10), moveL(oplayer, 2, 10), moveL(oplayer, 3, 10), not moveL(oplayer, 4, 10), not moveL(oplayer, 5, 10), legal(oplayer, mark(2,4), 10), not terminated(10).
does(oplayer, mark(3,1), 10) :- not moveL(oplayer, 1, 10), not moveL(oplayer, 2, 10), not moveL(oplayer, 3, 10), moveL(oplayer, 4, 10), not moveL(oplayer, 5, 10), legal(oplayer, mark(3,1), 10), not terminated(10).
does(oplayer, mark(3,2), 10) :- moveL(oplayer, 1, 10), not moveL(oplayer, 2, 10), not moveL(oplayer, 3, 10), moveL(oplayer, 4, 10), not moveL(oplayer, 5, 10), legal(oplayer, mark(3,2), 10), not terminated(10).
does(oplayer, mark(3,3), 10) :- not moveL(oplayer, 1, 10), moveL(oplayer, 2, 10), not moveL(oplayer, 3, 10), moveL(oplayer, 4, 10), not moveL(oplayer, 5, 10), legal(oplayer, mark(3,3), 10), not terminated(10).
does(oplayer, mark(3,4), 10) :- moveL(oplayer, 1, 10), moveL(oplayer, 2, 10), not moveL(oplayer, 3, 10), moveL(oplayer, 4, 10), not moveL(oplayer, 5, 10), legal(oplayer, mark(3,4), 10), not terminated(10).
does(oplayer, mark(4,1), 10) :- not moveL(oplayer, 1, 10), not moveL(oplayer, 2, 10), moveL(oplayer, 3, 10), moveL(oplayer, 4, 10), not moveL(oplayer, 5, 10), legal(oplayer, mark(4,1), 10), not terminated(10).
does(oplayer, mark(4,2), 10) :- moveL(oplayer, 1, 10), not moveL(oplayer, 2, 10), moveL(oplayer, 3, 10), moveL(oplayer, 4, 10), not moveL(oplayer, 5, 10), legal(oplayer, mark(4,2), 10), not terminated(10).
does(oplayer, mark(4,3), 10) :- not moveL(oplayer, 1, 10), moveL(oplayer, 2, 10), moveL(oplayer, 3, 10), moveL(oplayer, 4, 10), not moveL(oplayer, 5, 10), legal(oplayer, mark(4,3), 10), not terminated(10).
does(oplayer, mark(4,4), 10) :- moveL(oplayer, 1, 10), moveL(oplayer, 2, 10), moveL(oplayer, 3, 10), moveL(oplayer, 4, 10), not moveL(oplayer, 5, 10), legal(oplayer, mark(4,4), 10), not terminated(10).
does(oplayer, noop, 10) :- not moveL(oplayer, 1, 10), not moveL(oplayer, 2, 10), not moveL(oplayer, 3, 10), not moveL(oplayer, 4, 10), moveL(oplayer, 5, 10), legal(oplayer, noop, 10), not terminated(10).
does(oplayer, mark(1,1), 12) :- not moveL(oplayer, 1, 12), not moveL(oplayer, 2, 12), not moveL(oplayer, 3, 12), not moveL(oplayer, 4, 12), not moveL(oplayer, 5, 12), legal(oplayer, mark(1,1), 12), not terminated(12).
does(oplayer, mark(1,2), 12) :- moveL(oplayer, 1, 12), not moveL(oplayer, 2, 12), not moveL(oplayer, 3, 12), not moveL(oplayer, 4, 12), not moveL(oplayer, 5, 12), legal(oplayer, mark(1,2), 12), not terminated(12).
does(oplayer, mark(1,3), 12) :- not moveL(oplayer, 1, 12), moveL(oplayer, 2, 12), not moveL(oplayer, 3, 12), not moveL(oplayer, 4, 12), not moveL(oplayer, 5, 12), legal(oplayer, mark(1,3), 12), not terminated(12).
does(oplayer, mark(1,4), 12) :- moveL(oplayer, 1, 12), moveL(oplayer, 2, 12), not moveL(oplayer, 3, 12), not moveL(oplayer, 4, 12), not moveL(oplayer, 5, 12), legal(oplayer, mark(1,4), 12), not terminated(12).
does(oplayer, mark(2,1), 12) :- not moveL(oplayer, 1, 12), not moveL(oplayer, 2, 12), moveL(oplayer, 3, 12), not moveL(oplayer, 4, 12), not moveL(oplayer, 5, 12), legal(oplayer, mark(2,1), 12), not terminated(12).
does(oplayer, mark(2,2), 12) :- moveL(oplayer, 1, 12), not moveL(oplayer, 2, 12), moveL(oplayer, 3, 12), not moveL(oplayer, 4, 12), not moveL(oplayer, 5, 12), legal(oplayer, mark(2,2), 12), not terminated(12).
does(oplayer, mark(2,3), 12) :- not moveL(oplayer, 1, 12), moveL(oplayer, 2, 12), moveL(oplayer, 3, 12), not moveL(oplayer, 4, 12), not moveL(oplayer, 5, 12), legal(oplayer, mark(2,3), 12), not terminated(12).
does(oplayer, mark(2,4), 12) :- moveL(oplayer, 1, 12), moveL(oplayer, 2, 12), moveL(oplayer, 3, 12), not moveL(oplayer, 4, 12), not moveL(oplayer, 5, 12), legal(oplayer, mark(2,4), 12), not terminated(12).
does(oplayer, mark(3,1), 12) :- not moveL(oplayer, 1, 12), not moveL(oplayer, 2, 12), not moveL(oplayer, 3, 12), moveL(oplayer, 4, 12), not moveL(oplayer, 5, 12), legal(oplayer, mark(3,1), 12), not terminated(12).
does(oplayer, mark(3,2), 12) :- moveL(oplayer, 1, 12), not moveL(oplayer, 2, 12), not moveL(oplayer, 3, 12), moveL(oplayer, 4, 12), not moveL(oplayer, 5, 12), legal(oplayer, mark(3,2), 12), not terminated(12).
does(oplayer, mark(3,3), 12) :- not moveL(oplayer, 1, 12), moveL(oplayer, 2, 12), not moveL(oplayer, 3, 12), moveL(oplayer, 4, 12), not moveL(oplayer, 5, 12), legal(oplayer, mark(3,3), 12), not terminated(12).
does(oplayer, mark(3,4), 12) :- moveL(oplayer, 1, 12), moveL(oplayer, 2, 12), not moveL(oplayer, 3, 12), moveL(oplayer, 4, 12), not moveL(oplayer, 5, 12), legal(oplayer, mark(3,4), 12), not terminated(12).
does(oplayer, mark(4,1), 12) :- not moveL(oplayer, 1, 12), not moveL(oplayer, 2, 12), moveL(oplayer, 3, 12), moveL(oplayer, 4, 12), not moveL(oplayer, 5, 12), legal(oplayer, mark(4,1), 12), not terminated(12).
does(oplayer, mark(4,2), 12) :- moveL(oplayer, 1, 12), not moveL(oplayer, 2, 12), moveL(oplayer, 3, 12), moveL(oplayer, 4, 12), not moveL(oplayer, 5, 12), legal(oplayer, mark(4,2), 12), not terminated(12).
does(oplayer, mark(4,3), 12) :- not moveL(oplayer, 1, 12), moveL(oplayer, 2, 12), moveL(oplayer, 3, 12), moveL(oplayer, 4, 12), not moveL(oplayer, 5, 12), legal(oplayer, mark(4,3), 12), not terminated(12).
does(oplayer, mark(4,4), 12) :- moveL(oplayer, 1, 12), moveL(oplayer, 2, 12), moveL(oplayer, 3, 12), moveL(oplayer, 4, 12), not moveL(oplayer, 5, 12), legal(oplayer, mark(4,4), 12), not terminated(12).
does(oplayer, noop, 12) :- not moveL(oplayer, 1, 12), not moveL(oplayer, 2, 12), not moveL(oplayer, 3, 12), not moveL(oplayer, 4, 12), moveL(oplayer, 5, 12), legal(oplayer, noop, 12), not terminated(12).
does(oplayer, mark(1,1), 14) :- not moveL(oplayer, 1, 14), not moveL(oplayer, 2, 14), not moveL(oplayer, 3, 14), not moveL(oplayer, 4, 14), not moveL(oplayer, 5, 14), legal(oplayer, mark(1,1), 14), not terminated(14).
does(oplayer, mark(1,2), 14) :- moveL(oplayer, 1, 14), not moveL(oplayer, 2, 14), not moveL(oplayer, 3, 14), not moveL(oplayer, 4, 14), not moveL(oplayer, 5, 14), legal(oplayer, mark(1,2), 14), not terminated(14).
does(oplayer, mark(1,3), 14) :- not moveL(oplayer, 1, 14), moveL(oplayer, 2, 14), not moveL(oplayer, 3, 14), not moveL(oplayer, 4, 14), not moveL(oplayer, 5, 14), legal(oplayer, mark(1,3), 14), not terminated(14).
does(oplayer, mark(1,4), 14) :- moveL(oplayer, 1, 14), moveL(oplayer, 2, 14), not moveL(oplayer, 3, 14), not moveL(oplayer, 4, 14), not moveL(oplayer, 5, 14), legal(oplayer, mark(1,4), 14), not terminated(14).
does(oplayer, mark(2,1), 14) :- not moveL(oplayer, 1, 14), not moveL(oplayer, 2, 14), moveL(oplayer, 3, 14), not moveL(oplayer, 4, 14), not moveL(oplayer, 5, 14), legal(oplayer, mark(2,1), 14), not terminated(14).
does(oplayer, mark(2,2), 14) :- moveL(oplayer, 1, 14), not moveL(oplayer, 2, 14), moveL(oplayer, 3, 14), not moveL(oplayer, 4, 14), not moveL(oplayer, 5, 14), legal(oplayer, mark(2,2), 14), not terminated(14).
does(oplayer, mark(2,3), 14) :- not moveL(oplayer, 1, 14), moveL(oplayer, 2, 14), moveL(oplayer, 3, 14), not moveL(oplayer, 4, 14), not moveL(oplayer, 5, 14), legal(oplayer, mark(2,3), 14), not terminated(14).
does(oplayer, mark(2,4), 14) :- moveL(oplayer, 1, 14), moveL(oplayer, 2, 14), moveL(oplayer, 3, 14), not moveL(oplayer, 4, 14), not moveL(oplayer, 5, 14), legal(oplayer, mark(2,4), 14), not terminated(14).
does(oplayer, mark(3,1), 14) :- not moveL(oplayer, 1, 14), not moveL(oplayer, 2, 14), not moveL(oplayer, 3, 14), moveL(oplayer, 4, 14), not moveL(oplayer, 5, 14), legal(oplayer, mark(3,1), 14), not terminated(14).
does(oplayer, mark(3,2), 14) :- moveL(oplayer, 1, 14), not moveL(oplayer, 2, 14), not moveL(oplayer, 3, 14), moveL(oplayer, 4, 14), not moveL(oplayer, 5, 14), legal(oplayer, mark(3,2), 14), not terminated(14).
does(oplayer, mark(3,3), 14) :- not moveL(oplayer, 1, 14), moveL(oplayer, 2, 14), not moveL(oplayer, 3, 14), moveL(oplayer, 4, 14), not moveL(oplayer, 5, 14), legal(oplayer, mark(3,3), 14), not terminated(14).
does(oplayer, mark(3,4), 14) :- moveL(oplayer, 1, 14), moveL(oplayer, 2, 14), not moveL(oplayer, 3, 14), moveL(oplayer, 4, 14), not moveL(oplayer, 5, 14), legal(oplayer, mark(3,4), 14), not terminated(14).
does(oplayer, mark(4,1), 14) :- not moveL(oplayer, 1, 14), not moveL(oplayer, 2, 14), moveL(oplayer, 3, 14), moveL(oplayer, 4, 14), not moveL(oplayer, 5, 14), legal(oplayer, mark(4,1), 14), not terminated(14).
does(oplayer, mark(4,2), 14) :- moveL(oplayer, 1, 14), not moveL(oplayer, 2, 14), moveL(oplayer, 3, 14), moveL(oplayer, 4, 14), not moveL(oplayer, 5, 14), legal(oplayer, mark(4,2), 14), not terminated(14).
does(oplayer, mark(4,3), 14) :- not moveL(oplayer, 1, 14), moveL(oplayer, 2, 14), moveL(oplayer, 3, 14), moveL(oplayer, 4, 14), not moveL(oplayer, 5, 14), legal(oplayer, mark(4,3), 14), not terminated(14).
does(oplayer, mark(4,4), 14) :- moveL(oplayer, 1, 14), moveL(oplayer, 2, 14), moveL(oplayer, 3, 14), moveL(oplayer, 4, 14), not moveL(oplayer, 5, 14), legal(oplayer, mark(4,4), 14), not terminated(14).
does(oplayer, noop, 14) :- not moveL(oplayer, 1, 14), not moveL(oplayer, 2, 14), not moveL(oplayer, 3, 14), not moveL(oplayer, 4, 14), moveL(oplayer, 5, 14), legal(oplayer, noop, 14), not terminated(14).
does(oplayer, mark(1,1), 16) :- not moveL(oplayer, 1, 16), not moveL(oplayer, 2, 16), not moveL(oplayer, 3, 16), not moveL(oplayer, 4, 16), not moveL(oplayer, 5, 16), legal(oplayer, mark(1,1), 16), not terminated(16).
does(oplayer, mark(1,2), 16) :- moveL(oplayer, 1, 16), not moveL(oplayer, 2, 16), not moveL(oplayer, 3, 16), not moveL(oplayer, 4, 16), not moveL(oplayer, 5, 16), legal(oplayer, mark(1,2), 16), not terminated(16).
does(oplayer, mark(1,3), 16) :- not moveL(oplayer, 1, 16), moveL(oplayer, 2, 16), not moveL(oplayer, 3, 16), not moveL(oplayer, 4, 16), not moveL(oplayer, 5, 16), legal(oplayer, mark(1,3), 16), not terminated(16).
does(oplayer, mark(1,4), 16) :- moveL(oplayer, 1, 16), moveL(oplayer, 2, 16), not moveL(oplayer, 3, 16), not moveL(oplayer, 4, 16), not moveL(oplayer, 5, 16), legal(oplayer, mark(1,4), 16), not terminated(16).
does(oplayer, mark(2,1), 16) :- not moveL(oplayer, 1, 16), not moveL(oplayer, 2, 16), moveL(oplayer, 3, 16), not moveL(oplayer, 4, 16), not moveL(oplayer, 5, 16), legal(oplayer, mark(2,1), 16), not terminated(16).
does(oplayer, mark(2,2), 16) :- moveL(oplayer, 1, 16), not moveL(oplayer, 2, 16), moveL(oplayer, 3, 16), not moveL(oplayer, 4, 16), not moveL(oplayer, 5, 16), legal(oplayer, mark(2,2), 16), not terminated(16).
does(oplayer, mark(2,3), 16) :- not moveL(oplayer, 1, 16), moveL(oplayer, 2, 16), moveL(oplayer, 3, 16), not moveL(oplayer, 4, 16), not moveL(oplayer, 5, 16), legal(oplayer, mark(2,3), 16), not terminated(16).
does(oplayer, mark(2,4), 16) :- moveL(oplayer, 1, 16), moveL(oplayer, 2, 16), moveL(oplayer, 3, 16), not moveL(oplayer, 4, 16), not moveL(oplayer, 5, 16), legal(oplayer, mark(2,4), 16), not terminated(16).
does(oplayer, mark(3,1), 16) :- not moveL(oplayer, 1, 16), not moveL(oplayer, 2, 16), not moveL(oplayer, 3, 16), moveL(oplayer, 4, 16), not moveL(oplayer, 5, 16), legal(oplayer, mark(3,1), 16), not terminated(16).
does(oplayer, mark(3,2), 16) :- moveL(oplayer, 1, 16), not moveL(oplayer, 2, 16), not moveL(oplayer, 3, 16), moveL(oplayer, 4, 16), not moveL(oplayer, 5, 16), legal(oplayer, mark(3,2), 16), not terminated(16).
does(oplayer, mark(3,3), 16) :- not moveL(oplayer, 1, 16), moveL(oplayer, 2, 16), not moveL(oplayer, 3, 16), moveL(oplayer, 4, 16), not moveL(oplayer, 5, 16), legal(oplayer, mark(3,3), 16), not terminated(16).
does(oplayer, mark(3,4), 16) :- moveL(oplayer, 1, 16), moveL(oplayer, 2, 16), not moveL(oplayer, 3, 16), moveL(oplayer, 4, 16), not moveL(oplayer, 5, 16), legal(oplayer, mark(3,4), 16), not terminated(16).
does(oplayer, mark(4,1), 16) :- not moveL(oplayer, 1, 16), not moveL(oplayer, 2, 16), moveL(oplayer, 3, 16), moveL(oplayer, 4, 16), not moveL(oplayer, 5, 16), legal(oplayer, mark(4,1), 16), not terminated(16).
does(oplayer, mark(4,2), 16) :- moveL(oplayer, 1, 16), not moveL(oplayer, 2, 16), moveL(oplayer, 3, 16), moveL(oplayer, 4, 16), not moveL(oplayer, 5, 16), legal(oplayer, mark(4,2), 16), not terminated(16).
does(oplayer, mark(4,3), 16) :- not moveL(oplayer, 1, 16), moveL(oplayer, 2, 16), moveL(oplayer, 3, 16), moveL(oplayer, 4, 16), not moveL(oplayer, 5, 16), legal(oplayer, mark(4,3), 16), not terminated(16).
does(oplayer, mark(4,4), 16) :- moveL(oplayer, 1, 16), moveL(oplayer, 2, 16), moveL(oplayer, 3, 16), moveL(oplayer, 4, 16), not moveL(oplayer, 5, 16), legal(oplayer, mark(4,4), 16), not terminated(16).
does(oplayer, noop, 16) :- not moveL(oplayer, 1, 16), not moveL(oplayer, 2, 16), not moveL(oplayer, 3, 16), not moveL(oplayer, 4, 16), moveL(oplayer, 5, 16), legal(oplayer, noop, 16), not terminated(16).

_forall(2 * 5 - 3, moveL(oplayer, I, 2)) :- ldom(oplayer, I).
_forall(4 * 5 - 3, moveL(oplayer, I, 4)) :- ldom(oplayer, I).
_forall(6 * 5 - 3, moveL(oplayer, I, 6)) :- ldom(oplayer, I).
_forall(8 * 5 - 3, moveL(oplayer, I, 8)) :- ldom(oplayer, I).
_forall(10 * 5 - 3, moveL(oplayer, I, 10)) :- ldom(oplayer, I).
_forall(12 * 5 - 3, moveL(oplayer, I, 12)) :- ldom(oplayer, I).
_forall(14 * 5 - 3, moveL(oplayer, I, 14)) :- ldom(oplayer, I).
_forall(16 * 5 - 3, moveL(oplayer, I, 16)) :- ldom(oplayer, I).
_exists(T * 5 - 2, does(oplayer, A, T)) :- mtdom(T), input(oplayer, A).
