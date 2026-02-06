mtdom(1..32).
role(xplayer).
role(oplayer).
role(random).
base(cell(X67306, X67307, xplayer)) :- x(X67306), y(X67307), domdomain(2, X67306), domdomain(2, X67307).
base(cell(X67306, X67307, oplayer)) :- x(X67306), y(X67307), domdomain(2, X67306), domdomain(2, X67307).
base(prev(X67306, X67307, xplayer)) :- x(X67306), y(X67307), domdomain(2, X67306), domdomain(2, X67307).
base(prev(X67306, X67307, oplayer)) :- x(X67306), y(X67307), domdomain(2, X67306), domdomain(2, X67307).
base(control(xplayer)).
base(control(oplayer)).
base(control(random)).
base(prevplayer(xplayer)).
base(prevplayer(oplayer)).
input(xplayer, drop(X67307)) :- x(X67307), domdomain(2, X67307).
input(oplayer, drop(X67307)) :- x(X67307), domdomain(2, X67307).
input(random, act(x, 1)).
input(random, act(x, 2)).
input(random, act(x, 3)).
input(random, act(x, 4)).
input(random, act(o, 1)).
input(X67304, noop) :- role(X67304), domdomain(5, X67304).
true(control(xplayer), 1).
legal(xplayer, noop, X67313) :- true(control(oplayer), X67313), tdom(X67313).
legal(random, noop, X67313) :- true(control(oplayer), X67313), tdom(X67313).
legal(random, noop, X67313) :- true(control(xplayer), X67313), tdom(X67313).
legal(oplayer, noop, X67313) :- true(control(xplayer), X67313), tdom(X67313).
legal(oplayer, noop, X67313) :- true(control(random), X67313), tdom(X67313).
legal(xplayer, noop, X67313) :- true(control(random), X67313), tdom(X67313).
legal(random, act(x, 1), X67316) :- true(control(random), X67316), tdom(X67316).
legal(random, act(x, 2), X67316) :- true(control(random), X67316), tdom(X67316).
legal(random, act(x, 3), X67316) :- true(control(random), X67316), tdom(X67316).
legal(random, act(x, 4), X67316) :- true(control(random), X67316), tdom(X67316).
legal(random, act(o, 1), X67316) :- true(control(random), X67316), tdom(X67316).
legal(xplayer, drop(X67307), X67319) :- true(control(xplayer), X67319), columnopen(X67307, X67319), tdom(X67319), domdomain(2, X67307).
legal(oplayer, drop(X67307), X67319) :- true(control(oplayer), X67319), columnopen(X67307, X67319), tdom(X67319), domdomain(2, X67307).
true(prev(X67306, 1, X67308), X67321 + 1) :- does(X67308, drop(X67306), X67321), columnempty(X67306, X67321), tdom(X67321), mtdom(X67321), domdomain(2, X67306), domdomain(5, X67308).
true(prev(X67306, X67307, X67308), X67334 + 1) :- does(X67308, drop(X67306), X67334), cellopen(X67306, X67307, X67334), succ(X67324, X67307), not cellopen(X67306, X67324, X67334), domdomain(2, X67324), domdomain(9, X67324), domdomain(10, X67307), tdom(X67334), mtdom(X67334), domdomain(2, X67306), domdomain(2, X67307), domdomain(5, X67308).
true(cell(X67306, X67307, xplayer), X67326 + 1) :- does(random, act(x, X67316), X67326), true(prev(X67306, X67307, xplayer), X67326), domdomain(2, X67316), mtdom(X67326), domdomain(2, X67306), domdomain(2, X67307).
true(cell(X67306, X67307, oplayer), X67326 + 1) :- does(random, act(o, X67316), X67326), true(prev(X67306, X67307, xplayer), X67326), domdomain(2, X67316), mtdom(X67326), domdomain(2, X67306), domdomain(2, X67307).
true(cell(X67306, X67307, oplayer), X67326 + 1) :- does(random, act(x, X67316), X67326), true(prev(X67306, X67307, oplayer), X67326), domdomain(2, X67316), mtdom(X67326), domdomain(2, X67306), domdomain(2, X67307).
true(cell(X67306, X67307, xplayer), X67326 + 1) :- does(random, act(o, X67316), X67326), true(prev(X67306, X67307, oplayer), X67326), domdomain(2, X67316), mtdom(X67326), domdomain(2, X67306), domdomain(2, X67307).
true(cell(X67306, X67307, X67308), X67318 + 1) :- true(cell(X67306, X67307, X67308), X67318), mtdom(X67318), domdomain(2, X67306), domdomain(2, X67307), domdomain(4, X67308).
true(prevplayer(oplayer), X67314 + 1) :- true(control(oplayer), X67314), mtdom(X67314).
true(control(random), X67314 + 1) :- true(control(oplayer), X67314), mtdom(X67314).
true(control(random), X67314 + 1) :- true(control(xplayer), X67314), mtdom(X67314).
true(prevplayer(xplayer), X67314 + 1) :- true(control(xplayer), X67314), mtdom(X67314).
true(control(xplayer), X67320 + 1) :- true(control(random), X67320), true(prevplayer(oplayer), X67320), mtdom(X67320).
true(control(oplayer), X67320 + 1) :- true(control(random), X67320), true(prevplayer(xplayer), X67320), mtdom(X67320).
terminal(X67308) :- line(xplayer, X67308), tdom(X67308).
terminal(X67308) :- line(oplayer, X67308), tdom(X67308).
terminal(X67308) :- not boardopen(X67308), tdom(X67308).
goal(xplayer, 100, X67311) :- line(xplayer, X67311), tdom(X67311).
goal(xplayer, 50, X67323) :- not line(xplayer, X67323), not line(oplayer, X67323), not boardopen(X67323), tdom(X67323).
goal(xplayer, 0, X67311) :- line(oplayer, X67311), tdom(X67311).
goal(xplayer, 0, X67321) :- not line(xplayer, X67321), not line(oplayer, X67321), boardopen(X67321), tdom(X67321).
goal(oplayer, 100, X67311) :- line(oplayer, X67311), tdom(X67311).
goal(oplayer, 50, X67323) :- not line(xplayer, X67323), not line(oplayer, X67323), not boardopen(X67323), tdom(X67323).
goal(oplayer, 0, X67311) :- line(xplayer, X67311), tdom(X67311).
goal(oplayer, 0, X67321) :- not line(xplayer, X67321), not line(oplayer, X67321), boardopen(X67321), tdom(X67321).
cellopen(X67304, X67305, X67335) :- x(X67304), y(X67305), not true(cell(X67304, X67305, xplayer), X67335), not true(cell(X67304, X67305, oplayer), X67335), tdom(X67335), domdomain(2, X67304), domdomain(2, X67305).
columnopen(X67304, X67311) :- cellopen(X67304, 4, X67311), tdom(X67311), domdomain(2, X67304).
columnempty(X67304, X67311) :- cellopen(X67304, 1, X67311), tdom(X67311), domdomain(2, X67304).
boardopen(X67312) :- x(X67306), columnopen(X67306, X67312), domdomain(2, X67306), tdom(X67312).
line(X67304, X67340) :- true(cell(X67310, X67311, X67304), X67340), succ(X67310, X67317), succ(X67317, X67322), true(cell(X67317, X67311, X67304), X67340), true(cell(X67322, X67311, X67304), X67340), domdomain(2, X67322), domdomain(2, X67317), domdomain(9, X67317), domdomain(10, X67322), domdomain(9, X67310), domdomain(10, X67317), domdomain(2, X67310), domdomain(2, X67311), tdom(X67340), domdomain(4, X67304).
line(X67304, X67340) :- true(cell(X67310, X67311, X67304), X67340), succ(X67311, X67317), succ(X67317, X67322), true(cell(X67310, X67317, X67304), X67340), true(cell(X67310, X67322, X67304), X67340), domdomain(2, X67322), domdomain(2, X67317), domdomain(9, X67317), domdomain(10, X67322), domdomain(9, X67311), domdomain(10, X67317), domdomain(2, X67310), domdomain(2, X67311), tdom(X67340), domdomain(4, X67304).
line(X67304, X67350) :- true(cell(X67310, X67311, X67304), X67350), succ(X67310, X67317), succ(X67317, X67322), succ(X67311, X67327), succ(X67327, X67332), true(cell(X67317, X67327, X67304), X67350), true(cell(X67322, X67332, X67304), X67350), domdomain(2, X67322), domdomain(2, X67332), domdomain(2, X67317), domdomain(2, X67327), domdomain(9, X67327), domdomain(10, X67332), domdomain(9, X67311), domdomain(10, X67327), domdomain(9, X67317), domdomain(10, X67322), domdomain(9, X67310), domdomain(10, X67317), domdomain(2, X67310), domdomain(2, X67311), tdom(X67350), domdomain(4, X67304).
line(X67304, X67350) :- true(cell(X67310, X67311, X67304), X67350), succ(X67310, X67317), succ(X67317, X67322), succ(X67326, X67311), succ(X67331, X67326), true(cell(X67317, X67326, X67304), X67350), true(cell(X67322, X67331, X67304), X67350), domdomain(2, X67322), domdomain(2, X67331), domdomain(2, X67317), domdomain(2, X67326), domdomain(9, X67331), domdomain(10, X67326), domdomain(9, X67326), domdomain(10, X67311), domdomain(9, X67317), domdomain(10, X67322), domdomain(9, X67310), domdomain(10, X67317), domdomain(2, X67310), domdomain(2, X67311), tdom(X67350), domdomain(4, X67304).
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
