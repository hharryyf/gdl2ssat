mtdom(1..32).
role(xplayer).
role(oplayer).
role(random).
base(cell(X67141, X67142, xplayer)) :- x(X67141), y(X67142), domdomain(4, X67141), domdomain(4, X67142).
base(cell(X67141, X67142, oplayer)) :- x(X67141), y(X67142), domdomain(4, X67141), domdomain(4, X67142).
base(prev(X67141, X67142, xplayer)) :- x(X67141), y(X67142), domdomain(4, X67141), domdomain(4, X67142).
base(prev(X67141, X67142, oplayer)) :- x(X67141), y(X67142), domdomain(4, X67141), domdomain(4, X67142).
base(control(xplayer)).
base(control(oplayer)).
base(control(random)).
base(prevplayer(xplayer)).
base(prevplayer(oplayer)).
input(xplayer, drop(X67142)) :- x(X67142), domdomain(4, X67142).
input(oplayer, drop(X67142)) :- x(X67142), domdomain(4, X67142).
input(random, act(x, 1)).
input(random, act(o, 1)).
input(X67139, noop) :- role(X67139), domdomain(6, X67139).
true(control(xplayer), 1).
legal(xplayer, noop, X67148) :- true(control(oplayer), X67148), tdom(X67148).
legal(random, noop, X67148) :- true(control(oplayer), X67148), tdom(X67148).
legal(random, noop, X67148) :- true(control(xplayer), X67148), tdom(X67148).
legal(oplayer, noop, X67148) :- true(control(xplayer), X67148), tdom(X67148).
legal(oplayer, noop, X67148) :- true(control(random), X67148), tdom(X67148).
legal(xplayer, noop, X67148) :- true(control(random), X67148), tdom(X67148).
legal(random, act(x, 1), X67151) :- true(control(random), X67151), tdom(X67151).
legal(random, act(o, 1), X67151) :- true(control(random), X67151), tdom(X67151).
legal(xplayer, drop(X67142), X67154) :- true(control(xplayer), X67154), columnopen(X67142, X67154), tdom(X67154), domdomain(4, X67142).
legal(oplayer, drop(X67142), X67154) :- true(control(oplayer), X67154), columnopen(X67142, X67154), tdom(X67154), domdomain(4, X67142).
true(prev(X67141, 1, X67143), X67156 + 1) :- does(X67143, drop(X67141), X67156), columnempty(X67141, X67156), tdom(X67156), mtdom(X67156), domdomain(4, X67141), domdomain(6, X67143).
true(prev(X67141, X67142, X67143), X67169 + 1) :- does(X67143, drop(X67141), X67169), cellopen(X67141, X67142, X67169), succ(X67159, X67142), not cellopen(X67141, X67159, X67169), domdomain(4, X67159), domdomain(10, X67159), domdomain(11, X67142), tdom(X67169), mtdom(X67169), domdomain(4, X67141), domdomain(4, X67142), domdomain(6, X67143).
true(cell(X67141, X67142, xplayer), X67161 + 1) :- does(random, act(x, X67151), X67161), true(prev(X67141, X67142, xplayer), X67161), domdomain(2, X67151), mtdom(X67161), domdomain(4, X67141), domdomain(4, X67142).
true(cell(X67141, X67142, oplayer), X67161 + 1) :- does(random, act(o, X67151), X67161), true(prev(X67141, X67142, xplayer), X67161), domdomain(2, X67151), mtdom(X67161), domdomain(4, X67141), domdomain(4, X67142).
true(cell(X67141, X67142, oplayer), X67161 + 1) :- does(random, act(x, X67151), X67161), true(prev(X67141, X67142, oplayer), X67161), domdomain(2, X67151), mtdom(X67161), domdomain(4, X67141), domdomain(4, X67142).
true(cell(X67141, X67142, xplayer), X67161 + 1) :- does(random, act(o, X67151), X67161), true(prev(X67141, X67142, oplayer), X67161), domdomain(2, X67151), mtdom(X67161), domdomain(4, X67141), domdomain(4, X67142).
true(cell(X67141, X67142, X67143), X67153 + 1) :- true(cell(X67141, X67142, X67143), X67153), mtdom(X67153), domdomain(4, X67141), domdomain(4, X67142), domdomain(5, X67143).
true(prevplayer(oplayer), X67149 + 1) :- true(control(oplayer), X67149), mtdom(X67149).
true(control(random), X67149 + 1) :- true(control(oplayer), X67149), mtdom(X67149).
true(control(random), X67149 + 1) :- true(control(xplayer), X67149), mtdom(X67149).
true(prevplayer(xplayer), X67149 + 1) :- true(control(xplayer), X67149), mtdom(X67149).
true(control(xplayer), X67155 + 1) :- true(control(random), X67155), true(prevplayer(oplayer), X67155), mtdom(X67155).
true(control(oplayer), X67155 + 1) :- true(control(random), X67155), true(prevplayer(xplayer), X67155), mtdom(X67155).
terminal(X67143) :- line(xplayer, X67143), tdom(X67143).
terminal(X67143) :- line(oplayer, X67143), tdom(X67143).
terminal(X67143) :- not boardopen(X67143), tdom(X67143).
goal(xplayer, 100, X67146) :- line(xplayer, X67146), tdom(X67146).
goal(xplayer, 50, X67158) :- not line(xplayer, X67158), not line(oplayer, X67158), not boardopen(X67158), tdom(X67158).
goal(xplayer, 0, X67146) :- line(oplayer, X67146), tdom(X67146).
goal(xplayer, 0, X67156) :- not line(xplayer, X67156), not line(oplayer, X67156), boardopen(X67156), tdom(X67156).
goal(oplayer, 100, X67146) :- line(oplayer, X67146), tdom(X67146).
goal(oplayer, 50, X67158) :- not line(xplayer, X67158), not line(oplayer, X67158), not boardopen(X67158), tdom(X67158).
goal(oplayer, 0, X67146) :- line(xplayer, X67146), tdom(X67146).
goal(oplayer, 0, X67156) :- not line(xplayer, X67156), not line(oplayer, X67156), boardopen(X67156), tdom(X67156).
cellopen(X67139, X67140, X67170) :- x(X67139), y(X67140), not true(cell(X67139, X67140, xplayer), X67170), not true(cell(X67139, X67140, oplayer), X67170), tdom(X67170), domdomain(4, X67139), domdomain(4, X67140).
columnopen(X67139, X67146) :- cellopen(X67139, 4, X67146), tdom(X67146), domdomain(4, X67139).
columnempty(X67139, X67146) :- cellopen(X67139, 1, X67146), tdom(X67146), domdomain(4, X67139).
boardopen(X67147) :- x(X67141), columnopen(X67141, X67147), domdomain(4, X67141), tdom(X67147).
line(X67139, X67188) :- true(cell(X67145, X67146, X67139), X67188), succ(X67145, X67152), succ(X67152, X67157), succ(X67157, X67162), true(cell(X67152, X67146, X67139), X67188), true(cell(X67157, X67146, X67139), X67188), true(cell(X67162, X67146, X67139), X67188), domdomain(4, X67162), domdomain(4, X67157), domdomain(4, X67152), domdomain(10, X67157), domdomain(11, X67162), domdomain(10, X67152), domdomain(11, X67157), domdomain(10, X67145), domdomain(11, X67152), domdomain(4, X67145), domdomain(4, X67146), tdom(X67188), domdomain(5, X67139).
line(X67139, X67188) :- true(cell(X67145, X67146, X67139), X67188), succ(X67146, X67152), succ(X67152, X67157), succ(X67157, X67162), true(cell(X67145, X67152, X67139), X67188), true(cell(X67145, X67157, X67139), X67188), true(cell(X67145, X67162, X67139), X67188), domdomain(4, X67162), domdomain(4, X67157), domdomain(4, X67152), domdomain(10, X67157), domdomain(11, X67162), domdomain(10, X67152), domdomain(11, X67157), domdomain(10, X67146), domdomain(11, X67152), domdomain(4, X67145), domdomain(4, X67146), tdom(X67188), domdomain(5, X67139).
line(X67139, X67203) :- true(cell(X67145, X67146, X67139), X67203), succ(X67145, X67152), succ(X67152, X67157), succ(X67157, X67162), succ(X67146, X67167), succ(X67167, X67172), succ(X67172, X67177), true(cell(X67152, X67167, X67139), X67203), true(cell(X67157, X67172, X67139), X67203), true(cell(X67162, X67177, X67139), X67203), domdomain(4, X67162), domdomain(4, X67177), domdomain(4, X67157), domdomain(4, X67172), domdomain(4, X67152), domdomain(4, X67167), domdomain(10, X67172), domdomain(11, X67177), domdomain(10, X67167), domdomain(11, X67172), domdomain(10, X67146), domdomain(11, X67167), domdomain(10, X67157), domdomain(11, X67162), domdomain(10, X67152), domdomain(11, X67157), domdomain(10, X67145), domdomain(11, X67152), domdomain(4, X67145), domdomain(4, X67146), tdom(X67203), domdomain(5, X67139).
line(X67139, X67203) :- true(cell(X67145, X67146, X67139), X67203), succ(X67145, X67152), succ(X67152, X67157), succ(X67157, X67162), succ(X67166, X67146), succ(X67171, X67166), succ(X67176, X67171), true(cell(X67152, X67166, X67139), X67203), true(cell(X67157, X67171, X67139), X67203), true(cell(X67162, X67176, X67139), X67203), domdomain(4, X67162), domdomain(4, X67176), domdomain(4, X67157), domdomain(4, X67171), domdomain(4, X67152), domdomain(4, X67166), domdomain(10, X67176), domdomain(11, X67171), domdomain(10, X67171), domdomain(11, X67166), domdomain(10, X67166), domdomain(11, X67146), domdomain(10, X67157), domdomain(11, X67162), domdomain(10, X67152), domdomain(11, X67157), domdomain(10, X67145), domdomain(11, X67152), domdomain(4, X67145), domdomain(4, X67146), tdom(X67203), domdomain(5, X67139).
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
domdomain(3, cell).
domdomain(3, control).
domdomain(3, prev).
domdomain(3, prevplayer).
domdomain(4, 1).
domdomain(4, 2).
domdomain(4, 3).
domdomain(4, 4).
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
domdomain(11, 2).
domdomain(11, 3).
domdomain(11, 4).
