mtdom(1..32).
role(xplayer).
role(oplayer).
role(random).
base(cell(X69133, X69134, xplayer)) :- x(X69133), y(X69134), domdomain(2, X69134), domdomain(4, X69133), domdomain(4, X69134).
base(cell(X69133, X69134, oplayer)) :- x(X69133), y(X69134), domdomain(2, X69134), domdomain(4, X69133), domdomain(4, X69134).
base(prev(X69133, X69134, xplayer)) :- x(X69133), y(X69134), domdomain(2, X69134), domdomain(4, X69133), domdomain(4, X69134).
base(prev(X69133, X69134, oplayer)) :- x(X69133), y(X69134), domdomain(2, X69134), domdomain(4, X69133), domdomain(4, X69134).
base(control(xplayer)).
base(control(oplayer)).
base(control(random)).
base(prevplayer(xplayer)).
base(prevplayer(oplayer)).
input(xplayer, drop(X69134)) :- x(X69134), domdomain(4, X69134).
input(oplayer, drop(X69134)) :- x(X69134), domdomain(4, X69134).
input(random, act(x, 1)).
input(random, act(x, 2)).
input(random, act(x, 3)).
input(random, act(x, 4)).
input(random, act(o, 1)).
input(X69131, noop) :- role(X69131), domdomain(6, X69131).
true(control(xplayer), 1).
true(cell(3, 1, xplayer), 1).
true(cell(2, 1, oplayer), 1).
true(cell(3, 2, xplayer), 1).
true(cell(3, 3, oplayer), 1).
legal(xplayer, noop, X69140) :- true(control(oplayer), X69140), tdom(X69140).
legal(random, noop, X69140) :- true(control(oplayer), X69140), tdom(X69140).
legal(random, noop, X69140) :- true(control(xplayer), X69140), tdom(X69140).
legal(oplayer, noop, X69140) :- true(control(xplayer), X69140), tdom(X69140).
legal(oplayer, noop, X69140) :- true(control(random), X69140), tdom(X69140).
legal(xplayer, noop, X69140) :- true(control(random), X69140), tdom(X69140).
legal(random, act(x, 1), X69143) :- true(control(random), X69143), tdom(X69143).
legal(random, act(x, 2), X69143) :- true(control(random), X69143), tdom(X69143).
legal(random, act(x, 3), X69143) :- true(control(random), X69143), tdom(X69143).
legal(random, act(x, 4), X69143) :- true(control(random), X69143), tdom(X69143).
legal(random, act(o, 1), X69143) :- true(control(random), X69143), tdom(X69143).
legal(xplayer, drop(X69134), X69146) :- true(control(xplayer), X69146), columnopen(X69134, X69146), tdom(X69146), domdomain(4, X69134).
legal(oplayer, drop(X69134), X69146) :- true(control(oplayer), X69146), columnopen(X69134, X69146), tdom(X69146), domdomain(4, X69134).
true(prev(X69133, 1, X69135), X69148 + 1) :- does(X69135, drop(X69133), X69148), columnempty(X69133, X69148), tdom(X69148), mtdom(X69148), domdomain(4, X69133), domdomain(6, X69135).
true(prev(X69133, X69134, X69135), X69161 + 1) :- does(X69135, drop(X69133), X69161), cellopen(X69133, X69134, X69161), succ(X69151, X69134), not cellopen(X69133, X69151, X69161), domdomain(4, X69151), domdomain(2, X69151), domdomain(10, X69134), tdom(X69161), mtdom(X69161), domdomain(4, X69133), domdomain(4, X69134), domdomain(6, X69135).
true(cell(X69133, X69134, xplayer), X69153 + 1) :- does(random, act(x, X69143), X69153), true(prev(X69133, X69134, xplayer), X69153), domdomain(2, X69143), mtdom(X69153), domdomain(4, X69133), domdomain(4, X69134).
true(cell(X69133, X69134, oplayer), X69153 + 1) :- does(random, act(o, X69143), X69153), true(prev(X69133, X69134, xplayer), X69153), domdomain(2, X69143), mtdom(X69153), domdomain(4, X69133), domdomain(4, X69134).
true(cell(X69133, X69134, oplayer), X69153 + 1) :- does(random, act(x, X69143), X69153), true(prev(X69133, X69134, oplayer), X69153), domdomain(2, X69143), mtdom(X69153), domdomain(4, X69133), domdomain(4, X69134).
true(cell(X69133, X69134, xplayer), X69153 + 1) :- does(random, act(o, X69143), X69153), true(prev(X69133, X69134, oplayer), X69153), domdomain(2, X69143), mtdom(X69153), domdomain(4, X69133), domdomain(4, X69134).
true(cell(X69133, X69134, X69135), X69145 + 1) :- true(cell(X69133, X69134, X69135), X69145), mtdom(X69145), domdomain(4, X69133), domdomain(4, X69134), domdomain(5, X69135).
true(prevplayer(oplayer), X69141 + 1) :- true(control(oplayer), X69141), mtdom(X69141).
true(control(random), X69141 + 1) :- true(control(oplayer), X69141), mtdom(X69141).
true(control(random), X69141 + 1) :- true(control(xplayer), X69141), mtdom(X69141).
true(prevplayer(xplayer), X69141 + 1) :- true(control(xplayer), X69141), mtdom(X69141).
true(control(xplayer), X69147 + 1) :- true(control(random), X69147), true(prevplayer(oplayer), X69147), mtdom(X69147).
true(control(oplayer), X69147 + 1) :- true(control(random), X69147), true(prevplayer(xplayer), X69147), mtdom(X69147).
terminal(X69135) :- line(xplayer, X69135), tdom(X69135).
terminal(X69135) :- line(oplayer, X69135), tdom(X69135).
terminal(X69135) :- not boardopen(X69135), tdom(X69135).
goal(xplayer, 100, X69138) :- line(xplayer, X69138), tdom(X69138).
goal(xplayer, 50, X69150) :- not line(xplayer, X69150), not line(oplayer, X69150), not boardopen(X69150), tdom(X69150).
goal(xplayer, 0, X69138) :- line(oplayer, X69138), tdom(X69138).
goal(xplayer, 0, X69148) :- not line(xplayer, X69148), not line(oplayer, X69148), boardopen(X69148), tdom(X69148).
goal(oplayer, 100, X69138) :- line(oplayer, X69138), tdom(X69138).
goal(oplayer, 50, X69150) :- not line(xplayer, X69150), not line(oplayer, X69150), not boardopen(X69150), tdom(X69150).
goal(oplayer, 0, X69138) :- line(xplayer, X69138), tdom(X69138).
goal(oplayer, 0, X69148) :- not line(xplayer, X69148), not line(oplayer, X69148), boardopen(X69148), tdom(X69148).
cellopen(X69131, X69132, X69162) :- x(X69131), y(X69132), not true(cell(X69131, X69132, xplayer), X69162), not true(cell(X69131, X69132, oplayer), X69162), domdomain(2, X69132), tdom(X69162), domdomain(4, X69131), domdomain(4, X69132).
columnopen(X69131, X69138) :- cellopen(X69131, 4, X69138), tdom(X69138), domdomain(4, X69131).
columnempty(X69131, X69138) :- cellopen(X69131, 1, X69138), tdom(X69138), domdomain(4, X69131).
boardopen(X69139) :- x(X69133), columnopen(X69133, X69139), domdomain(4, X69133), tdom(X69139).
line(X69131, X69167) :- true(cell(X69137, X69138, X69131), X69167), succ(X69137, X69144), succ(X69144, X69149), true(cell(X69144, X69138, X69131), X69167), true(cell(X69149, X69138, X69131), X69167), domdomain(4, X69149), domdomain(4, X69144), domdomain(2, X69144), domdomain(10, X69149), domdomain(2, X69137), domdomain(10, X69144), domdomain(4, X69137), domdomain(4, X69138), tdom(X69167), domdomain(5, X69131).
line(X69131, X69167) :- true(cell(X69137, X69138, X69131), X69167), succ(X69138, X69144), succ(X69144, X69149), true(cell(X69137, X69144, X69131), X69167), true(cell(X69137, X69149, X69131), X69167), domdomain(4, X69149), domdomain(4, X69144), domdomain(2, X69144), domdomain(10, X69149), domdomain(2, X69138), domdomain(10, X69144), domdomain(4, X69137), domdomain(4, X69138), tdom(X69167), domdomain(5, X69131).
line(X69131, X69177) :- true(cell(X69137, X69138, X69131), X69177), succ(X69137, X69144), succ(X69144, X69149), succ(X69138, X69154), succ(X69154, X69159), true(cell(X69144, X69154, X69131), X69177), true(cell(X69149, X69159, X69131), X69177), domdomain(4, X69149), domdomain(4, X69159), domdomain(4, X69144), domdomain(4, X69154), domdomain(2, X69154), domdomain(10, X69159), domdomain(2, X69138), domdomain(10, X69154), domdomain(2, X69144), domdomain(10, X69149), domdomain(2, X69137), domdomain(10, X69144), domdomain(4, X69137), domdomain(4, X69138), tdom(X69177), domdomain(5, X69131).
line(X69131, X69177) :- true(cell(X69137, X69138, X69131), X69177), succ(X69137, X69144), succ(X69144, X69149), succ(X69153, X69138), succ(X69158, X69153), true(cell(X69144, X69153, X69131), X69177), true(cell(X69149, X69158, X69131), X69177), domdomain(4, X69149), domdomain(4, X69158), domdomain(4, X69144), domdomain(4, X69153), domdomain(2, X69158), domdomain(10, X69153), domdomain(2, X69153), domdomain(10, X69138), domdomain(2, X69144), domdomain(10, X69149), domdomain(2, X69137), domdomain(10, X69144), domdomain(4, X69137), domdomain(4, X69138), tdom(X69177), domdomain(5, X69131).
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
