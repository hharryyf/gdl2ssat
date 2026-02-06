mtdom(1..18).
role(xplayer).
role(oplayer).
role(random).
index(1).
index(2).
index(3).
base(cell(X52146, X52147, x)) :- index(X52146), index(X52147), domdomain(4, X52146), domdomain(4, X52147).
base(cell(X52146, X52147, o)) :- index(X52146), index(X52147), domdomain(4, X52146), domdomain(4, X52147).
base(prev(X52146, X52147, x)) :- domdomain(4, X52146), domdomain(4, X52147).
base(prev(X52146, X52147, o)) :- domdomain(4, X52146), domdomain(4, X52147).
base(control(X52146)) :- role(X52146), domdomain(5, X52146).
base(prevplayer(xplayer)).
base(prevplayer(oplayer)).
input(xplayer, mark(X52147, X52148)) :- index(X52147), index(X52148), domdomain(4, X52147), domdomain(4, X52148).
input(oplayer, mark(X52147, X52148)) :- index(X52147), index(X52148), domdomain(4, X52147), domdomain(4, X52148).
input(random, act(x, 1)).
input(random, act(x, 2)).
input(random, act(x, 3)).
input(random, act(x, 4)).
input(random, act(o, 1)).
input(X52144, noop) :- role(X52144), domdomain(5, X52144).
true(control(xplayer), 1).
true(prev(X52146, X52147, x), X52158 + 1) :- does(xplayer, mark(X52146, X52147), X52158), mtdom(X52158), domdomain(4, X52146), domdomain(4, X52147).
true(prev(X52146, X52147, o), X52158 + 1) :- does(oplayer, mark(X52146, X52147), X52158), mtdom(X52158), domdomain(4, X52146), domdomain(4, X52147).
true(cell(X52146, X52147, x), X52166 + 1) :- does(random, act(x, X52156), X52166), true(prev(X52146, X52147, x), X52166), domdomain(2, X52156), mtdom(X52166), domdomain(4, X52146), domdomain(4, X52147).
true(cell(X52146, X52147, o), X52166 + 1) :- does(random, act(o, X52156), X52166), true(prev(X52146, X52147, x), X52166), domdomain(2, X52156), mtdom(X52166), domdomain(4, X52146), domdomain(4, X52147).
true(cell(X52146, X52147, o), X52166 + 1) :- does(random, act(x, X52156), X52166), true(prev(X52146, X52147, o), X52166), domdomain(2, X52156), mtdom(X52166), domdomain(4, X52146), domdomain(4, X52147).
true(cell(X52146, X52147, x), X52166 + 1) :- does(random, act(o, X52156), X52166), true(prev(X52146, X52147, o), X52166), domdomain(2, X52156), mtdom(X52166), domdomain(4, X52146), domdomain(4, X52147).
true(cell(X52146, X52147, X52148), X52158 + 1) :- true(cell(X52146, X52147, X52148), X52158), mtdom(X52158), domdomain(4, X52146), domdomain(4, X52147), domdomain(1, X52148).
true(prevplayer(oplayer), X52154 + 1) :- true(control(oplayer), X52154), mtdom(X52154).
true(control(random), X52154 + 1) :- true(control(oplayer), X52154), mtdom(X52154).
true(control(random), X52154 + 1) :- true(control(xplayer), X52154), mtdom(X52154).
true(prevplayer(xplayer), X52154 + 1) :- true(control(xplayer), X52154), mtdom(X52154).
true(control(xplayer), X52160 + 1) :- true(control(random), X52160), true(prevplayer(oplayer), X52160), mtdom(X52160).
true(control(oplayer), X52160 + 1) :- true(control(random), X52160), true(prevplayer(xplayer), X52160), mtdom(X52160).
open(X52172) :- not true(cell(X52150, X52151, x), X52172), not true(cell(X52150, X52151, o), X52172), index(X52150), index(X52151), domdomain(4, X52150), domdomain(4, X52151), tdom(X52172).
legal(X52144, mark(X52147, X52148), X52189) :- not true(cell(X52147, X52148, x), X52189), not true(cell(X52147, X52148, o), X52189), true(control(X52144), X52189), X52144 != random, index(X52147), index(X52148), tdom(X52189), domdomain(5, X52144), domdomain(4, X52147), domdomain(4, X52148).
legal(xplayer, noop, X52153) :- true(control(oplayer), X52153), tdom(X52153).
legal(random, noop, X52153) :- true(control(oplayer), X52153), tdom(X52153).
legal(random, noop, X52153) :- true(control(xplayer), X52153), tdom(X52153).
legal(oplayer, noop, X52153) :- true(control(xplayer), X52153), tdom(X52153).
legal(oplayer, noop, X52153) :- true(control(random), X52153), tdom(X52153).
legal(xplayer, noop, X52153) :- true(control(random), X52153), tdom(X52153).
legal(random, act(x, 1), X52156) :- true(control(random), X52156), tdom(X52156).
legal(random, act(x, 2), X52156) :- true(control(random), X52156), tdom(X52156).
legal(random, act(x, 3), X52156) :- true(control(random), X52156), tdom(X52156).
legal(random, act(x, 4), X52156) :- true(control(random), X52156), tdom(X52156).
legal(random, act(o, 1), X52156) :- true(control(random), X52156), tdom(X52156).
goal(xplayer, 100, X52151) :- line(x, X52151), tdom(X52151).
goal(xplayer, 50, X52163) :- not line(x, X52163), not line(o, X52163), not open(X52163), tdom(X52163).
goal(xplayer, 0, X52151) :- line(o, X52151), tdom(X52151).
goal(oplayer, 100, X52151) :- line(o, X52151), tdom(X52151).
goal(oplayer, 50, X52163) :- not line(x, X52163), not line(o, X52163), not open(X52163), tdom(X52163).
goal(oplayer, 0, X52151) :- line(x, X52151), tdom(X52151).
terminal(X52148) :- line(x, X52148), tdom(X52148).
terminal(X52148) :- line(o, X52148), tdom(X52148).
terminal(X52148) :- not open(X52148), tdom(X52148).
succ(1, 2).
succ(2, 3).
line(X52144, X52180) :- true(cell(X52150, X52151, X52144), X52180), true(cell(X52150, X52159, X52144), X52180), true(cell(X52150, X52167, X52144), X52180), succ(X52151, X52159), succ(X52159, X52167), domdomain(10, X52159), domdomain(11, X52167), domdomain(10, X52151), domdomain(11, X52159), domdomain(4, X52167), domdomain(4, X52159), domdomain(4, X52150), domdomain(4, X52151), tdom(X52180), domdomain(1, X52144).
line(X52144, X52180) :- true(cell(X52150, X52151, X52144), X52180), true(cell(X52158, X52151, X52144), X52180), true(cell(X52166, X52151, X52144), X52180), succ(X52150, X52158), succ(X52158, X52166), domdomain(10, X52158), domdomain(11, X52166), domdomain(10, X52150), domdomain(11, X52158), domdomain(4, X52166), domdomain(4, X52158), domdomain(4, X52150), domdomain(4, X52151), tdom(X52180), domdomain(1, X52144).
line(X52144, X52190) :- true(cell(X52150, X52151, X52144), X52190), true(cell(X52158, X52159, X52144), X52190), true(cell(X52166, X52167, X52144), X52190), succ(X52150, X52158), succ(X52158, X52166), succ(X52151, X52159), succ(X52159, X52167), domdomain(10, X52159), domdomain(11, X52167), domdomain(10, X52151), domdomain(11, X52159), domdomain(10, X52158), domdomain(11, X52166), domdomain(10, X52150), domdomain(11, X52158), domdomain(4, X52166), domdomain(4, X52167), domdomain(4, X52158), domdomain(4, X52159), domdomain(4, X52150), domdomain(4, X52151), tdom(X52190), domdomain(1, X52144).
line(X52143, X52189) :- true(cell(X52149, X52150, X52143), X52189), true(cell(X52157, X52158, X52143), X52189), true(cell(X52165, X52166, X52143), X52189), succ(X52165, X52157), succ(X52157, X52149), succ(X52150, X52158), succ(X52158, X52166), domdomain(10, X52158), domdomain(11, X52166), domdomain(10, X52150), domdomain(11, X52158), domdomain(10, X52157), domdomain(11, X52149), domdomain(10, X52165), domdomain(11, X52157), domdomain(4, X52165), domdomain(4, X52166), domdomain(4, X52157), domdomain(4, X52158), domdomain(4, X52149), domdomain(4, X52150), tdom(X52189), domdomain(1, X52143).
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
domdomain(5, oplayer).
domdomain(5, random).
domdomain(5, xplayer).
domdomain(6, oplayer).
domdomain(6, xplayer).
domdomain(7, 0).
domdomain(7, 50).
domdomain(7, 100).
domdomain(8, control).
domdomain(9, act).
domdomain(9, mark).
domdomain(9, noop).
domdomain(10, 1).
domdomain(10, 2).
domdomain(11, 2).
domdomain(11, 3).
