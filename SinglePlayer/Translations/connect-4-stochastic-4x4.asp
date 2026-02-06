mtdom(1..32).
role(xplayer).
role(oplayer).
role(random).
base(cell(X70439, X70440, xplayer)) :- x(X70439), y(X70440), domdomain(2, X70439), domdomain(2, X70440).
base(cell(X70439, X70440, oplayer)) :- x(X70439), y(X70440), domdomain(2, X70439), domdomain(2, X70440).
base(prev(X70439, X70440, xplayer)) :- x(X70439), y(X70440), domdomain(2, X70439), domdomain(2, X70440).
base(prev(X70439, X70440, oplayer)) :- x(X70439), y(X70440), domdomain(2, X70439), domdomain(2, X70440).
base(control(xplayer)).
base(control(oplayer)).
base(control(random)).
base(prevplayer(xplayer)).
base(prevplayer(oplayer)).
input(xplayer, drop(X70440)) :- x(X70440), domdomain(2, X70440).
input(oplayer, drop(X70440)) :- x(X70440), domdomain(2, X70440).
input(random, act(x, 1)).
input(random, act(x, 2)).
input(random, act(x, 3)).
input(random, act(x, 4)).
input(random, act(o, 1)).
input(X70437, noop) :- role(X70437), domdomain(5, X70437).
true(control(xplayer), 1).
legal(xplayer, noop, X70446) :- true(control(oplayer), X70446), tdom(X70446).
legal(random, noop, X70446) :- true(control(oplayer), X70446), tdom(X70446).
legal(random, noop, X70446) :- true(control(xplayer), X70446), tdom(X70446).
legal(oplayer, noop, X70446) :- true(control(xplayer), X70446), tdom(X70446).
legal(oplayer, noop, X70446) :- true(control(random), X70446), tdom(X70446).
legal(xplayer, noop, X70446) :- true(control(random), X70446), tdom(X70446).
legal(random, act(x, 1), X70449) :- true(control(random), X70449), tdom(X70449).
legal(random, act(x, 2), X70449) :- true(control(random), X70449), tdom(X70449).
legal(random, act(x, 3), X70449) :- true(control(random), X70449), tdom(X70449).
legal(random, act(x, 4), X70449) :- true(control(random), X70449), tdom(X70449).
legal(random, act(o, 1), X70449) :- true(control(random), X70449), tdom(X70449).
legal(xplayer, drop(X70440), X70452) :- true(control(xplayer), X70452), columnopen(X70440, X70452), tdom(X70452), domdomain(2, X70440).
legal(oplayer, drop(X70440), X70452) :- true(control(oplayer), X70452), columnopen(X70440, X70452), tdom(X70452), domdomain(2, X70440).
true(prev(X70439, 1, X70441), X70454 + 1) :- does(X70441, drop(X70439), X70454), columnempty(X70439, X70454), tdom(X70454), mtdom(X70454), domdomain(2, X70439), domdomain(5, X70441).
true(prev(X70439, X70440, X70441), X70467 + 1) :- does(X70441, drop(X70439), X70467), cellopen(X70439, X70440, X70467), succ(X70457, X70440), not cellopen(X70439, X70457, X70467), domdomain(2, X70457), domdomain(9, X70457), domdomain(10, X70440), tdom(X70467), mtdom(X70467), domdomain(2, X70439), domdomain(2, X70440), domdomain(5, X70441).
true(cell(X70439, X70440, xplayer), X70459 + 1) :- does(random, act(x, X70449), X70459), true(prev(X70439, X70440, xplayer), X70459), domdomain(2, X70449), mtdom(X70459), domdomain(2, X70439), domdomain(2, X70440).
true(cell(X70439, X70440, oplayer), X70459 + 1) :- does(random, act(o, X70449), X70459), true(prev(X70439, X70440, xplayer), X70459), domdomain(2, X70449), mtdom(X70459), domdomain(2, X70439), domdomain(2, X70440).
true(cell(X70439, X70440, oplayer), X70459 + 1) :- does(random, act(x, X70449), X70459), true(prev(X70439, X70440, oplayer), X70459), domdomain(2, X70449), mtdom(X70459), domdomain(2, X70439), domdomain(2, X70440).
true(cell(X70439, X70440, xplayer), X70459 + 1) :- does(random, act(o, X70449), X70459), true(prev(X70439, X70440, oplayer), X70459), domdomain(2, X70449), mtdom(X70459), domdomain(2, X70439), domdomain(2, X70440).
true(cell(X70439, X70440, X70441), X70451 + 1) :- true(cell(X70439, X70440, X70441), X70451), mtdom(X70451), domdomain(2, X70439), domdomain(2, X70440), domdomain(4, X70441).
true(prevplayer(oplayer), X70447 + 1) :- true(control(oplayer), X70447), mtdom(X70447).
true(control(random), X70447 + 1) :- true(control(oplayer), X70447), mtdom(X70447).
true(control(random), X70447 + 1) :- true(control(xplayer), X70447), mtdom(X70447).
true(prevplayer(xplayer), X70447 + 1) :- true(control(xplayer), X70447), mtdom(X70447).
true(control(xplayer), X70453 + 1) :- true(control(random), X70453), true(prevplayer(oplayer), X70453), mtdom(X70453).
true(control(oplayer), X70453 + 1) :- true(control(random), X70453), true(prevplayer(xplayer), X70453), mtdom(X70453).
terminal(X70441) :- line(xplayer, X70441), tdom(X70441).
terminal(X70441) :- line(oplayer, X70441), tdom(X70441).
terminal(X70441) :- not boardopen(X70441), tdom(X70441).
goal(xplayer, 100, X70444) :- line(xplayer, X70444), tdom(X70444).
goal(xplayer, 50, X70456) :- not line(xplayer, X70456), not line(oplayer, X70456), not boardopen(X70456), tdom(X70456).
goal(xplayer, 0, X70444) :- line(oplayer, X70444), tdom(X70444).
goal(xplayer, 0, X70454) :- not line(xplayer, X70454), not line(oplayer, X70454), boardopen(X70454), tdom(X70454).
goal(oplayer, 100, X70444) :- line(oplayer, X70444), tdom(X70444).
goal(oplayer, 50, X70456) :- not line(xplayer, X70456), not line(oplayer, X70456), not boardopen(X70456), tdom(X70456).
goal(oplayer, 0, X70444) :- line(xplayer, X70444), tdom(X70444).
goal(oplayer, 0, X70454) :- not line(xplayer, X70454), not line(oplayer, X70454), boardopen(X70454), tdom(X70454).
cellopen(X70437, X70438, X70468) :- x(X70437), y(X70438), not true(cell(X70437, X70438, xplayer), X70468), not true(cell(X70437, X70438, oplayer), X70468), tdom(X70468), domdomain(2, X70437), domdomain(2, X70438).
columnopen(X70437, X70444) :- cellopen(X70437, 4, X70444), tdom(X70444), domdomain(2, X70437).
columnempty(X70437, X70444) :- cellopen(X70437, 1, X70444), tdom(X70444), domdomain(2, X70437).
boardopen(X70445) :- x(X70439), columnopen(X70439, X70445), domdomain(2, X70439), tdom(X70445).
line(X70437, X70486) :- true(cell(X70443, X70444, X70437), X70486), succ(X70443, X70450), succ(X70450, X70455), succ(X70455, X70460), true(cell(X70450, X70444, X70437), X70486), true(cell(X70455, X70444, X70437), X70486), true(cell(X70460, X70444, X70437), X70486), domdomain(2, X70460), domdomain(2, X70455), domdomain(2, X70450), domdomain(9, X70455), domdomain(10, X70460), domdomain(9, X70450), domdomain(10, X70455), domdomain(9, X70443), domdomain(10, X70450), domdomain(2, X70443), domdomain(2, X70444), tdom(X70486), domdomain(4, X70437).
line(X70437, X70486) :- true(cell(X70443, X70444, X70437), X70486), succ(X70444, X70450), succ(X70450, X70455), succ(X70455, X70460), true(cell(X70443, X70450, X70437), X70486), true(cell(X70443, X70455, X70437), X70486), true(cell(X70443, X70460, X70437), X70486), domdomain(2, X70460), domdomain(2, X70455), domdomain(2, X70450), domdomain(9, X70455), domdomain(10, X70460), domdomain(9, X70450), domdomain(10, X70455), domdomain(9, X70444), domdomain(10, X70450), domdomain(2, X70443), domdomain(2, X70444), tdom(X70486), domdomain(4, X70437).
line(X70437, X70501) :- true(cell(X70443, X70444, X70437), X70501), succ(X70443, X70450), succ(X70450, X70455), succ(X70455, X70460), succ(X70444, X70465), succ(X70465, X70470), succ(X70470, X70475), true(cell(X70450, X70465, X70437), X70501), true(cell(X70455, X70470, X70437), X70501), true(cell(X70460, X70475, X70437), X70501), domdomain(2, X70460), domdomain(2, X70475), domdomain(2, X70455), domdomain(2, X70470), domdomain(2, X70450), domdomain(2, X70465), domdomain(9, X70470), domdomain(10, X70475), domdomain(9, X70465), domdomain(10, X70470), domdomain(9, X70444), domdomain(10, X70465), domdomain(9, X70455), domdomain(10, X70460), domdomain(9, X70450), domdomain(10, X70455), domdomain(9, X70443), domdomain(10, X70450), domdomain(2, X70443), domdomain(2, X70444), tdom(X70501), domdomain(4, X70437).
line(X70437, X70501) :- true(cell(X70443, X70444, X70437), X70501), succ(X70443, X70450), succ(X70450, X70455), succ(X70455, X70460), succ(X70464, X70444), succ(X70469, X70464), succ(X70474, X70469), true(cell(X70450, X70464, X70437), X70501), true(cell(X70455, X70469, X70437), X70501), true(cell(X70460, X70474, X70437), X70501), domdomain(2, X70460), domdomain(2, X70474), domdomain(2, X70455), domdomain(2, X70469), domdomain(2, X70450), domdomain(2, X70464), domdomain(9, X70474), domdomain(10, X70469), domdomain(9, X70469), domdomain(10, X70464), domdomain(9, X70464), domdomain(10, X70444), domdomain(9, X70455), domdomain(10, X70460), domdomain(9, X70450), domdomain(10, X70455), domdomain(9, X70443), domdomain(10, X70450), domdomain(2, X70443), domdomain(2, X70444), tdom(X70501), domdomain(4, X70437).
succ(1, 2).
succ(2, 3).
succ(3, 4).
x(1).
x(2).
x(3).
x(4).
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
domdomain(4, oplayer).
domdomain(4, xplayer).
domdomain(5, oplayer).
domdomain(5, random).
domdomain(5, xplayer).
domdomain(6, 0).
domdomain(6, 50).
domdomain(6, 100).
domdomain(7, control).
domdomain(8, act).
domdomain(8, drop).
domdomain(8, noop).
domdomain(9, 1).
domdomain(9, 2).
domdomain(9, 3).
domdomain(10, 2).
domdomain(10, 3).
domdomain(10, 4).
