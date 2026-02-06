mtdom(1..40).
role(xplayer).
role(oplayer).
role(random).
base(cell(X67490, X67491, xplayer)) :- x(X67490), y(X67491), domdomain(10, X67491), domdomain(4, X67490), domdomain(4, X67491).
base(cell(X67490, X67491, oplayer)) :- x(X67490), y(X67491), domdomain(10, X67491), domdomain(4, X67490), domdomain(4, X67491).
base(prev(X67490, X67491, xplayer)) :- x(X67490), y(X67491), domdomain(10, X67491), domdomain(4, X67490), domdomain(4, X67491).
base(prev(X67490, X67491, oplayer)) :- x(X67490), y(X67491), domdomain(10, X67491), domdomain(4, X67490), domdomain(4, X67491).
base(control(xplayer)).
base(control(oplayer)).
base(control(random)).
base(prevplayer(xplayer)).
base(prevplayer(oplayer)).
input(xplayer, drop(X67491)) :- x(X67491), domdomain(4, X67491).
input(oplayer, drop(X67491)) :- x(X67491), domdomain(4, X67491).
input(random, act(x, 1)).
input(random, act(o, 1)).
input(X67488, noop) :- role(X67488), domdomain(6, X67488).
true(control(xplayer), 1).
legal(xplayer, noop, X67497) :- true(control(oplayer), X67497), tdom(X67497).
legal(random, noop, X67497) :- true(control(oplayer), X67497), tdom(X67497).
legal(random, noop, X67497) :- true(control(xplayer), X67497), tdom(X67497).
legal(oplayer, noop, X67497) :- true(control(xplayer), X67497), tdom(X67497).
legal(oplayer, noop, X67497) :- true(control(random), X67497), tdom(X67497).
legal(xplayer, noop, X67497) :- true(control(random), X67497), tdom(X67497).
legal(random, act(x, 1), X67500) :- true(control(random), X67500), tdom(X67500).
legal(random, act(o, 1), X67500) :- true(control(random), X67500), tdom(X67500).
legal(xplayer, drop(X67491), X67503) :- true(control(xplayer), X67503), columnopen(X67491, X67503), tdom(X67503), domdomain(4, X67491).
legal(oplayer, drop(X67491), X67503) :- true(control(oplayer), X67503), columnopen(X67491, X67503), tdom(X67503), domdomain(4, X67491).
true(prev(X67490, 1, X67492), X67505 + 1) :- does(X67492, drop(X67490), X67505), columnempty(X67490, X67505), tdom(X67505), mtdom(X67505), domdomain(4, X67490), domdomain(6, X67492).
true(prev(X67490, X67491, X67492), X67518 + 1) :- does(X67492, drop(X67490), X67518), cellopen(X67490, X67491, X67518), succ(X67508, X67491), not cellopen(X67490, X67508, X67518), domdomain(4, X67508), domdomain(10, X67508), domdomain(11, X67491), tdom(X67518), mtdom(X67518), domdomain(4, X67490), domdomain(4, X67491), domdomain(6, X67492).
true(cell(X67490, X67491, xplayer), X67510 + 1) :- does(random, act(x, X67500), X67510), true(prev(X67490, X67491, xplayer), X67510), domdomain(2, X67500), mtdom(X67510), domdomain(4, X67490), domdomain(4, X67491).
true(cell(X67490, X67491, oplayer), X67510 + 1) :- does(random, act(o, X67500), X67510), true(prev(X67490, X67491, xplayer), X67510), domdomain(2, X67500), mtdom(X67510), domdomain(4, X67490), domdomain(4, X67491).
true(cell(X67490, X67491, oplayer), X67510 + 1) :- does(random, act(x, X67500), X67510), true(prev(X67490, X67491, oplayer), X67510), domdomain(2, X67500), mtdom(X67510), domdomain(4, X67490), domdomain(4, X67491).
true(cell(X67490, X67491, xplayer), X67510 + 1) :- does(random, act(o, X67500), X67510), true(prev(X67490, X67491, oplayer), X67510), domdomain(2, X67500), mtdom(X67510), domdomain(4, X67490), domdomain(4, X67491).
true(cell(X67490, X67491, X67492), X67502 + 1) :- true(cell(X67490, X67491, X67492), X67502), mtdom(X67502), domdomain(4, X67490), domdomain(4, X67491), domdomain(5, X67492).
true(prevplayer(oplayer), X67498 + 1) :- true(control(oplayer), X67498), mtdom(X67498).
true(control(random), X67498 + 1) :- true(control(oplayer), X67498), mtdom(X67498).
true(control(random), X67498 + 1) :- true(control(xplayer), X67498), mtdom(X67498).
true(prevplayer(xplayer), X67498 + 1) :- true(control(xplayer), X67498), mtdom(X67498).
true(control(xplayer), X67504 + 1) :- true(control(random), X67504), true(prevplayer(oplayer), X67504), mtdom(X67504).
true(control(oplayer), X67504 + 1) :- true(control(random), X67504), true(prevplayer(xplayer), X67504), mtdom(X67504).
terminal(X67492) :- line(xplayer, X67492), tdom(X67492).
terminal(X67492) :- line(oplayer, X67492), tdom(X67492).
terminal(X67492) :- not boardopen(X67492), tdom(X67492).
goal(xplayer, 100, X67495) :- line(xplayer, X67495), tdom(X67495).
goal(xplayer, 50, X67507) :- not line(xplayer, X67507), not line(oplayer, X67507), not boardopen(X67507), tdom(X67507).
goal(xplayer, 0, X67495) :- line(oplayer, X67495), tdom(X67495).
goal(xplayer, 0, X67505) :- not line(xplayer, X67505), not line(oplayer, X67505), boardopen(X67505), tdom(X67505).
goal(oplayer, 100, X67495) :- line(oplayer, X67495), tdom(X67495).
goal(oplayer, 50, X67507) :- not line(xplayer, X67507), not line(oplayer, X67507), not boardopen(X67507), tdom(X67507).
goal(oplayer, 0, X67495) :- line(xplayer, X67495), tdom(X67495).
goal(oplayer, 0, X67505) :- not line(xplayer, X67505), not line(oplayer, X67505), boardopen(X67505), tdom(X67505).
cellopen(X67488, X67489, X67519) :- x(X67488), y(X67489), not true(cell(X67488, X67489, xplayer), X67519), not true(cell(X67488, X67489, oplayer), X67519), domdomain(10, X67489), tdom(X67519), domdomain(4, X67488), domdomain(4, X67489).
columnopen(X67488, X67495) :- cellopen(X67488, 4, X67495), tdom(X67495), domdomain(4, X67488).
columnempty(X67488, X67495) :- cellopen(X67488, 1, X67495), tdom(X67495), domdomain(4, X67488).
boardopen(X67496) :- x(X67490), columnopen(X67490, X67496), domdomain(4, X67490), tdom(X67496).
line(X67488, X67537) :- true(cell(X67494, X67495, X67488), X67537), succ(X67494, X67501), succ(X67501, X67506), succ(X67506, X67511), true(cell(X67501, X67495, X67488), X67537), true(cell(X67506, X67495, X67488), X67537), true(cell(X67511, X67495, X67488), X67537), domdomain(4, X67511), domdomain(4, X67506), domdomain(4, X67501), domdomain(10, X67506), domdomain(11, X67511), domdomain(10, X67501), domdomain(11, X67506), domdomain(10, X67494), domdomain(11, X67501), domdomain(4, X67494), domdomain(4, X67495), tdom(X67537), domdomain(5, X67488).
line(X67488, X67537) :- true(cell(X67494, X67495, X67488), X67537), succ(X67495, X67501), succ(X67501, X67506), succ(X67506, X67511), true(cell(X67494, X67501, X67488), X67537), true(cell(X67494, X67506, X67488), X67537), true(cell(X67494, X67511, X67488), X67537), domdomain(4, X67511), domdomain(4, X67506), domdomain(4, X67501), domdomain(10, X67506), domdomain(11, X67511), domdomain(10, X67501), domdomain(11, X67506), domdomain(10, X67495), domdomain(11, X67501), domdomain(4, X67494), domdomain(4, X67495), tdom(X67537), domdomain(5, X67488).
line(X67488, X67552) :- true(cell(X67494, X67495, X67488), X67552), succ(X67494, X67501), succ(X67501, X67506), succ(X67506, X67511), succ(X67495, X67516), succ(X67516, X67521), succ(X67521, X67526), true(cell(X67501, X67516, X67488), X67552), true(cell(X67506, X67521, X67488), X67552), true(cell(X67511, X67526, X67488), X67552), domdomain(4, X67511), domdomain(4, X67526), domdomain(4, X67506), domdomain(4, X67521), domdomain(4, X67501), domdomain(4, X67516), domdomain(10, X67521), domdomain(11, X67526), domdomain(10, X67516), domdomain(11, X67521), domdomain(10, X67495), domdomain(11, X67516), domdomain(10, X67506), domdomain(11, X67511), domdomain(10, X67501), domdomain(11, X67506), domdomain(10, X67494), domdomain(11, X67501), domdomain(4, X67494), domdomain(4, X67495), tdom(X67552), domdomain(5, X67488).
line(X67488, X67552) :- true(cell(X67494, X67495, X67488), X67552), succ(X67494, X67501), succ(X67501, X67506), succ(X67506, X67511), succ(X67515, X67495), succ(X67520, X67515), succ(X67525, X67520), true(cell(X67501, X67515, X67488), X67552), true(cell(X67506, X67520, X67488), X67552), true(cell(X67511, X67525, X67488), X67552), domdomain(4, X67511), domdomain(4, X67525), domdomain(4, X67506), domdomain(4, X67520), domdomain(4, X67501), domdomain(4, X67515), domdomain(10, X67525), domdomain(11, X67520), domdomain(10, X67520), domdomain(11, X67515), domdomain(10, X67515), domdomain(11, X67495), domdomain(10, X67506), domdomain(11, X67511), domdomain(10, X67501), domdomain(11, X67506), domdomain(10, X67494), domdomain(11, X67501), domdomain(4, X67494), domdomain(4, X67495), tdom(X67552), domdomain(5, X67488).
succ(1, 2).
succ(2, 3).
succ(3, 4).
succ(4, 5).
x(1).
x(2).
x(3).
x(4).
x(5).
y(1).
y(2).
y(3).
y(4).
domdomain(1, o).
domdomain(1, x).
domdomain(2, 1).
domdomain(3, cell).
domdomain(3, control).
domdomain(3, prev).
domdomain(3, prevplayer).
domdomain(4, 1).
domdomain(4, 2).
domdomain(4, 3).
domdomain(4, 4).
domdomain(4, 5).
domdomain(5, oplayer).
domdomain(5, xplayer).
domdomain(6, oplayer).
domdomain(6, random).
domdomain(6, xplayer).
domdomain(7, 0).
domdomain(7, 50).
domdomain(7, 100).
domdomain(8, control).
domdomain(9, act).
domdomain(9, drop).
domdomain(9, noop).
domdomain(10, 1).
domdomain(10, 2).
domdomain(10, 3).
domdomain(10, 4).
domdomain(11, 2).
domdomain(11, 3).
domdomain(11, 4).
domdomain(11, 5).
