mtdom(1..9).
role(xplayer).
role(oplayer).
role(random).
index(1).
index(2).
index(3).
base(cell(X45239, X45240, b)) :- index(X45239), index(X45240), domdomain(4, X45239), domdomain(4, X45240).
base(cell(X45239, X45240, x)) :- index(X45239), index(X45240), domdomain(4, X45239), domdomain(4, X45240).
base(cell(X45239, X45240, o)) :- index(X45239), index(X45240), domdomain(4, X45239), domdomain(4, X45240).
base(control(xplayer)).
base(control(oplayer)).
input(xplayer, mark(X45240, X45241)) :- index(X45240), index(X45241), domdomain(4, X45240), domdomain(4, X45241).
input(oplayer, mark(X45240, X45241)) :- index(X45240), index(X45241), domdomain(4, X45240), domdomain(4, X45241).
input(random, act(x, 1)).
input(random, act(x, 2)).
input(random, act(x, 3)).
input(random, act(x, 4)).
input(random, act(o, 1)).
input(xplayer, noop).
input(oplayer, noop).
true(cell(1, 1, b), 1).
true(cell(1, 2, b), 1).
true(cell(1, 3, b), 1).
true(cell(2, 1, b), 1).
true(cell(2, 2, b), 1).
true(cell(2, 3, b), 1).
true(cell(3, 1, b), 1).
true(cell(3, 2, b), 1).
true(cell(3, 3, b), 1).
true(control(xplayer), 1).
true(cell(X45239, X45240, x), X45267 + 1) :- does(xplayer, mark(X45239, X45240), X45267), does(random, act(x, X45257), X45267), true(cell(X45239, X45240, b), X45267), domdomain(2, X45257), mtdom(X45267), domdomain(4, X45239), domdomain(4, X45240).
true(cell(X45239, X45240, o), X45267 + 1) :- does(xplayer, mark(X45239, X45240), X45267), does(random, act(o, X45257), X45267), true(cell(X45239, X45240, b), X45267), domdomain(2, X45257), mtdom(X45267), domdomain(4, X45239), domdomain(4, X45240).
true(cell(X45239, X45240, o), X45267 + 1) :- does(oplayer, mark(X45239, X45240), X45267), does(random, act(x, X45257), X45267), true(cell(X45239, X45240, b), X45267), domdomain(2, X45257), mtdom(X45267), domdomain(4, X45239), domdomain(4, X45240).
true(cell(X45239, X45240, x), X45267 + 1) :- does(oplayer, mark(X45239, X45240), X45267), does(random, act(o, X45257), X45267), true(cell(X45239, X45240, b), X45267), domdomain(2, X45257), mtdom(X45267), domdomain(4, X45239), domdomain(4, X45240).
true(cell(X45239, X45240, X45241), X45256 + 1) :- true(cell(X45239, X45240, X45241), X45256), X45241 != b, mtdom(X45256), domdomain(4, X45239), domdomain(4, X45240), domdomain(5, X45241).
true(cell(X45239, X45240, b), X45264 + 1) :- does(X45245, mark(X45248, X45249), X45264), true(cell(X45239, X45240, b), X45264), X45239 != X45248, domdomain(7, X45245), domdomain(4, X45248), domdomain(4, X45249), mtdom(X45264), domdomain(4, X45239), domdomain(4, X45240).
true(cell(X45239, X45240, b), X45264 + 1) :- does(X45245, mark(X45248, X45249), X45264), true(cell(X45239, X45240, b), X45264), X45240 != X45249, domdomain(7, X45245), domdomain(4, X45248), domdomain(4, X45249), mtdom(X45264), domdomain(4, X45239), domdomain(4, X45240).
true(control(xplayer), X45247 + 1) :- true(control(oplayer), X45247), mtdom(X45247).
true(control(oplayer), X45247 + 1) :- true(control(xplayer), X45247), mtdom(X45247).
row(X45237, X45238, X45264) :- true(cell(X45237, 1, X45238), X45264), true(cell(X45237, 2, X45238), X45264), true(cell(X45237, 3, X45238), X45264), tdom(X45264), domdomain(4, X45237), domdomain(5, X45238).
column(X45237, X45238, X45264) :- true(cell(1, X45237, X45238), X45264), true(cell(2, X45237, X45238), X45264), true(cell(3, X45237, X45238), X45264), tdom(X45264), domdomain(4, X45237), domdomain(5, X45238).
diagonal(X45237, X45263) :- true(cell(1, 1, X45237), X45263), true(cell(2, 2, X45237), X45263), true(cell(3, 3, X45237), X45263), tdom(X45263), domdomain(5, X45237).
diagonal(X45237, X45263) :- true(cell(1, 3, X45237), X45263), true(cell(2, 2, X45237), X45263), true(cell(3, 1, X45237), X45263), tdom(X45263), domdomain(5, X45237).
line(X45237, X45244) :- row(X45241, X45237, X45244), domdomain(4, X45241), tdom(X45244), domdomain(5, X45237).
line(X45237, X45244) :- column(X45241, X45237, X45244), domdomain(4, X45241), tdom(X45244), domdomain(5, X45237).
line(X45237, X45243) :- diagonal(X45237, X45243), tdom(X45243), domdomain(5, X45237).
open(X45245) :- true(cell(X45241, X45242, b), X45245), domdomain(4, X45241), domdomain(4, X45242), tdom(X45245).
legal(X45237, mark(X45240, X45241), X45257) :- true(cell(X45240, X45241, b), X45257), true(control(X45237), X45257), domdomain(6, X45237), tdom(X45257), domdomain(7, X45237), domdomain(4, X45240), domdomain(4, X45241).
legal(xplayer, noop, X45246) :- true(control(oplayer), X45246), tdom(X45246).
legal(oplayer, noop, X45246) :- true(control(xplayer), X45246), tdom(X45246).
legal(random, act(x, 1), X45243) :- tdom(X45243).
legal(random, act(x, 2), X45243) :- tdom(X45243).
legal(random, act(x, 3), X45243) :- tdom(X45243).
legal(random, act(x, 4), X45243) :- tdom(X45243).
legal(random, act(o, 1), X45243) :- tdom(X45243).
goal(xplayer, 100, X45244) :- line(x, X45244), tdom(X45244).
goal(xplayer, 50, X45256) :- not line(x, X45256), not line(o, X45256), not open(X45256), tdom(X45256).
goal(xplayer, 0, X45244) :- line(o, X45244), tdom(X45244).
goal(oplayer, 100, X45244) :- line(o, X45244), tdom(X45244).
goal(oplayer, 50, X45256) :- not line(x, X45256), not line(o, X45256), not open(X45256), tdom(X45256).
goal(oplayer, 0, X45244) :- line(x, X45244), tdom(X45244).
terminal(X45241) :- line(x, X45241), tdom(X45241).
terminal(X45241) :- line(o, X45241), tdom(X45241).
terminal(X45240) :- not open(X45240), tdom(X45240).
domdomain(1, o).
domdomain(1, x).
domdomain(2, 1).
domdomain(2, 2).
domdomain(2, 3).
domdomain(2, 4).
domdomain(3, cell).
domdomain(3, control).
domdomain(4, 1).
domdomain(4, 2).
domdomain(4, 3).
domdomain(5, b).
domdomain(5, o).
domdomain(5, x).
domdomain(6, oplayer).
domdomain(6, xplayer).
domdomain(7, oplayer).
domdomain(7, random).
domdomain(7, xplayer).
domdomain(8, 0).
domdomain(8, 50).
domdomain(8, 100).
domdomain(9, act).
domdomain(9, mark).
domdomain(9, noop).
