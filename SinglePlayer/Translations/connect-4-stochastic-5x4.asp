mtdom(1..32).
role(xplayer).
role(oplayer).
role(random).
base(cell(X72284, X72285, xplayer)) :- x(X72284), y(X72285), domdomain(2, X72285), domdomain(4, X72284), domdomain(4, X72285).
base(cell(X72284, X72285, oplayer)) :- x(X72284), y(X72285), domdomain(2, X72285), domdomain(4, X72284), domdomain(4, X72285).
base(prev(X72284, X72285, xplayer)) :- x(X72284), y(X72285), domdomain(2, X72285), domdomain(4, X72284), domdomain(4, X72285).
base(prev(X72284, X72285, oplayer)) :- x(X72284), y(X72285), domdomain(2, X72285), domdomain(4, X72284), domdomain(4, X72285).
base(control(xplayer)).
base(control(oplayer)).
base(control(random)).
base(prevplayer(xplayer)).
base(prevplayer(oplayer)).
input(xplayer, drop(X72285)) :- x(X72285), domdomain(4, X72285).
input(oplayer, drop(X72285)) :- x(X72285), domdomain(4, X72285).
input(random, act(x, 1)).
input(random, act(x, 2)).
input(random, act(x, 3)).
input(random, act(x, 4)).
input(random, act(o, 1)).
input(X72282, noop) :- role(X72282), domdomain(6, X72282).
true(control(xplayer), 1).
true(cell(3, 1, xplayer), 1).
true(cell(2, 1, oplayer), 1).
true(cell(3, 2, xplayer), 1).
true(cell(3, 3, oplayer), 1).
legal(xplayer, noop, X72291) :- true(control(oplayer), X72291), tdom(X72291).
legal(random, noop, X72291) :- true(control(oplayer), X72291), tdom(X72291).
legal(random, noop, X72291) :- true(control(xplayer), X72291), tdom(X72291).
legal(oplayer, noop, X72291) :- true(control(xplayer), X72291), tdom(X72291).
legal(oplayer, noop, X72291) :- true(control(random), X72291), tdom(X72291).
legal(xplayer, noop, X72291) :- true(control(random), X72291), tdom(X72291).
legal(random, act(x, 1), X72294) :- true(control(random), X72294), tdom(X72294).
legal(random, act(x, 2), X72294) :- true(control(random), X72294), tdom(X72294).
legal(random, act(x, 3), X72294) :- true(control(random), X72294), tdom(X72294).
legal(random, act(x, 4), X72294) :- true(control(random), X72294), tdom(X72294).
legal(random, act(o, 1), X72294) :- true(control(random), X72294), tdom(X72294).
legal(xplayer, drop(X72285), X72297) :- true(control(xplayer), X72297), columnopen(X72285, X72297), tdom(X72297), domdomain(4, X72285).
legal(oplayer, drop(X72285), X72297) :- true(control(oplayer), X72297), columnopen(X72285, X72297), tdom(X72297), domdomain(4, X72285).
true(prev(X72284, 1, X72286), X72299 + 1) :- does(X72286, drop(X72284), X72299), columnempty(X72284, X72299), tdom(X72299), mtdom(X72299), domdomain(4, X72284), domdomain(6, X72286).
true(prev(X72284, X72285, X72286), X72312 + 1) :- does(X72286, drop(X72284), X72312), cellopen(X72284, X72285, X72312), succ(X72302, X72285), not cellopen(X72284, X72302, X72312), domdomain(4, X72302), domdomain(2, X72302), domdomain(10, X72285), tdom(X72312), mtdom(X72312), domdomain(4, X72284), domdomain(4, X72285), domdomain(6, X72286).
true(cell(X72284, X72285, xplayer), X72304 + 1) :- does(random, act(x, X72294), X72304), true(prev(X72284, X72285, xplayer), X72304), domdomain(2, X72294), mtdom(X72304), domdomain(4, X72284), domdomain(4, X72285).
true(cell(X72284, X72285, oplayer), X72304 + 1) :- does(random, act(o, X72294), X72304), true(prev(X72284, X72285, xplayer), X72304), domdomain(2, X72294), mtdom(X72304), domdomain(4, X72284), domdomain(4, X72285).
true(cell(X72284, X72285, oplayer), X72304 + 1) :- does(random, act(x, X72294), X72304), true(prev(X72284, X72285, oplayer), X72304), domdomain(2, X72294), mtdom(X72304), domdomain(4, X72284), domdomain(4, X72285).
true(cell(X72284, X72285, xplayer), X72304 + 1) :- does(random, act(o, X72294), X72304), true(prev(X72284, X72285, oplayer), X72304), domdomain(2, X72294), mtdom(X72304), domdomain(4, X72284), domdomain(4, X72285).
true(cell(X72284, X72285, X72286), X72296 + 1) :- true(cell(X72284, X72285, X72286), X72296), mtdom(X72296), domdomain(4, X72284), domdomain(4, X72285), domdomain(5, X72286).
true(prevplayer(oplayer), X72292 + 1) :- true(control(oplayer), X72292), mtdom(X72292).
true(control(random), X72292 + 1) :- true(control(oplayer), X72292), mtdom(X72292).
true(control(random), X72292 + 1) :- true(control(xplayer), X72292), mtdom(X72292).
true(prevplayer(xplayer), X72292 + 1) :- true(control(xplayer), X72292), mtdom(X72292).
true(control(xplayer), X72298 + 1) :- true(control(random), X72298), true(prevplayer(oplayer), X72298), mtdom(X72298).
true(control(oplayer), X72298 + 1) :- true(control(random), X72298), true(prevplayer(xplayer), X72298), mtdom(X72298).
terminal(X72286) :- line(xplayer, X72286), tdom(X72286).
terminal(X72286) :- line(oplayer, X72286), tdom(X72286).
terminal(X72286) :- not boardopen(X72286), tdom(X72286).
goal(xplayer, 100, X72289) :- line(xplayer, X72289), tdom(X72289).
goal(xplayer, 50, X72301) :- not line(xplayer, X72301), not line(oplayer, X72301), not boardopen(X72301), tdom(X72301).
goal(xplayer, 0, X72289) :- line(oplayer, X72289), tdom(X72289).
goal(xplayer, 0, X72299) :- not line(xplayer, X72299), not line(oplayer, X72299), boardopen(X72299), tdom(X72299).
goal(oplayer, 100, X72289) :- line(oplayer, X72289), tdom(X72289).
goal(oplayer, 50, X72301) :- not line(xplayer, X72301), not line(oplayer, X72301), not boardopen(X72301), tdom(X72301).
goal(oplayer, 0, X72289) :- line(xplayer, X72289), tdom(X72289).
goal(oplayer, 0, X72299) :- not line(xplayer, X72299), not line(oplayer, X72299), boardopen(X72299), tdom(X72299).
cellopen(X72282, X72283, X72313) :- x(X72282), y(X72283), not true(cell(X72282, X72283, xplayer), X72313), not true(cell(X72282, X72283, oplayer), X72313), domdomain(2, X72283), tdom(X72313), domdomain(4, X72282), domdomain(4, X72283).
columnopen(X72282, X72289) :- cellopen(X72282, 4, X72289), tdom(X72289), domdomain(4, X72282).
columnempty(X72282, X72289) :- cellopen(X72282, 1, X72289), tdom(X72289), domdomain(4, X72282).
boardopen(X72290) :- x(X72284), columnopen(X72284, X72290), domdomain(4, X72284), tdom(X72290).
line(X72282, X72331) :- true(cell(X72288, X72289, X72282), X72331), succ(X72288, X72295), succ(X72295, X72300), succ(X72300, X72305), true(cell(X72295, X72289, X72282), X72331), true(cell(X72300, X72289, X72282), X72331), true(cell(X72305, X72289, X72282), X72331), domdomain(4, X72305), domdomain(4, X72300), domdomain(4, X72295), domdomain(2, X72300), domdomain(10, X72305), domdomain(2, X72295), domdomain(10, X72300), domdomain(2, X72288), domdomain(10, X72295), domdomain(4, X72288), domdomain(4, X72289), tdom(X72331), domdomain(5, X72282).
line(X72282, X72331) :- true(cell(X72288, X72289, X72282), X72331), succ(X72289, X72295), succ(X72295, X72300), succ(X72300, X72305), true(cell(X72288, X72295, X72282), X72331), true(cell(X72288, X72300, X72282), X72331), true(cell(X72288, X72305, X72282), X72331), domdomain(4, X72305), domdomain(4, X72300), domdomain(4, X72295), domdomain(2, X72300), domdomain(10, X72305), domdomain(2, X72295), domdomain(10, X72300), domdomain(2, X72289), domdomain(10, X72295), domdomain(4, X72288), domdomain(4, X72289), tdom(X72331), domdomain(5, X72282).
line(X72282, X72346) :- true(cell(X72288, X72289, X72282), X72346), succ(X72288, X72295), succ(X72295, X72300), succ(X72300, X72305), succ(X72289, X72310), succ(X72310, X72315), succ(X72315, X72320), true(cell(X72295, X72310, X72282), X72346), true(cell(X72300, X72315, X72282), X72346), true(cell(X72305, X72320, X72282), X72346), domdomain(4, X72305), domdomain(4, X72320), domdomain(4, X72300), domdomain(4, X72315), domdomain(4, X72295), domdomain(4, X72310), domdomain(2, X72315), domdomain(10, X72320), domdomain(2, X72310), domdomain(10, X72315), domdomain(2, X72289), domdomain(10, X72310), domdomain(2, X72300), domdomain(10, X72305), domdomain(2, X72295), domdomain(10, X72300), domdomain(2, X72288), domdomain(10, X72295), domdomain(4, X72288), domdomain(4, X72289), tdom(X72346), domdomain(5, X72282).
line(X72282, X72346) :- true(cell(X72288, X72289, X72282), X72346), succ(X72288, X72295), succ(X72295, X72300), succ(X72300, X72305), succ(X72309, X72289), succ(X72314, X72309), succ(X72319, X72314), true(cell(X72295, X72309, X72282), X72346), true(cell(X72300, X72314, X72282), X72346), true(cell(X72305, X72319, X72282), X72346), domdomain(4, X72305), domdomain(4, X72319), domdomain(4, X72300), domdomain(4, X72314), domdomain(4, X72295), domdomain(4, X72309), domdomain(2, X72319), domdomain(10, X72314), domdomain(2, X72314), domdomain(10, X72309), domdomain(2, X72309), domdomain(10, X72289), domdomain(2, X72300), domdomain(10, X72305), domdomain(2, X72295), domdomain(10, X72300), domdomain(2, X72288), domdomain(10, X72295), domdomain(4, X72288), domdomain(4, X72289), tdom(X72346), domdomain(5, X72282).
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
domdomain(2, 2).
domdomain(2, 3).
domdomain(2, 4).
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
domdomain(8, cell).
domdomain(8, control).
domdomain(9, act).
domdomain(9, drop).
domdomain(9, noop).
domdomain(10, 2).
domdomain(10, 3).
domdomain(10, 4).
domdomain(10, 5).
