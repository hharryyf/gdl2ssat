mtdom(1..32).
role(xplayer).
role(oplayer).
role(random).
index(1).
index(2).
index(3).
index(4).
base(cell(X52279, X52280, x)) :- index(X52279), index(X52280), domdomain(2, X52279), domdomain(2, X52280).
base(cell(X52279, X52280, o)) :- index(X52279), index(X52280), domdomain(2, X52279), domdomain(2, X52280).
base(prev(X52279, X52280, x)) :- domdomain(2, X52279), domdomain(2, X52280).
base(prev(X52279, X52280, o)) :- domdomain(2, X52279), domdomain(2, X52280).
base(control(X52279)) :- role(X52279), domdomain(4, X52279).
base(prevplayer(xplayer)).
base(prevplayer(oplayer)).
input(xplayer, mark(X52280, X52281)) :- index(X52280), index(X52281), domdomain(2, X52280), domdomain(2, X52281).
input(oplayer, mark(X52280, X52281)) :- index(X52280), index(X52281), domdomain(2, X52280), domdomain(2, X52281).
input(random, act(x, 1)).
input(random, act(x, 2)).
input(random, act(x, 3)).
input(random, act(x, 4)).
input(random, act(o, 1)).
input(X52277, noop) :- role(X52277), domdomain(4, X52277).
true(control(xplayer), 1).
true(prev(X52279, X52280, x), X52291 + 1) :- does(xplayer, mark(X52279, X52280), X52291), mtdom(X52291), domdomain(2, X52279), domdomain(2, X52280).
true(prev(X52279, X52280, o), X52291 + 1) :- does(oplayer, mark(X52279, X52280), X52291), mtdom(X52291), domdomain(2, X52279), domdomain(2, X52280).
true(cell(X52279, X52280, x), X52299 + 1) :- does(random, act(x, X52289), X52299), true(prev(X52279, X52280, x), X52299), domdomain(2, X52289), mtdom(X52299), domdomain(2, X52279), domdomain(2, X52280).
true(cell(X52279, X52280, o), X52299 + 1) :- does(random, act(o, X52289), X52299), true(prev(X52279, X52280, x), X52299), domdomain(2, X52289), mtdom(X52299), domdomain(2, X52279), domdomain(2, X52280).
true(cell(X52279, X52280, o), X52299 + 1) :- does(random, act(x, X52289), X52299), true(prev(X52279, X52280, o), X52299), domdomain(2, X52289), mtdom(X52299), domdomain(2, X52279), domdomain(2, X52280).
true(cell(X52279, X52280, x), X52299 + 1) :- does(random, act(o, X52289), X52299), true(prev(X52279, X52280, o), X52299), domdomain(2, X52289), mtdom(X52299), domdomain(2, X52279), domdomain(2, X52280).
true(cell(X52279, X52280, X52281), X52291 + 1) :- true(cell(X52279, X52280, X52281), X52291), mtdom(X52291), domdomain(2, X52279), domdomain(2, X52280), domdomain(1, X52281).
true(prevplayer(oplayer), X52287 + 1) :- true(control(oplayer), X52287), mtdom(X52287).
true(control(random), X52287 + 1) :- true(control(oplayer), X52287), mtdom(X52287).
true(control(random), X52287 + 1) :- true(control(xplayer), X52287), mtdom(X52287).
true(prevplayer(xplayer), X52287 + 1) :- true(control(xplayer), X52287), mtdom(X52287).
true(control(xplayer), X52293 + 1) :- true(control(random), X52293), true(prevplayer(oplayer), X52293), mtdom(X52293).
true(control(oplayer), X52293 + 1) :- true(control(random), X52293), true(prevplayer(xplayer), X52293), mtdom(X52293).
open(X52305) :- not true(cell(X52283, X52284, x), X52305), not true(cell(X52283, X52284, o), X52305), index(X52283), index(X52284), domdomain(2, X52283), domdomain(2, X52284), tdom(X52305).
legal(X52277, mark(X52280, X52281), X52322) :- not true(cell(X52280, X52281, x), X52322), not true(cell(X52280, X52281, o), X52322), true(control(X52277), X52322), X52277 != random, index(X52280), index(X52281), tdom(X52322), domdomain(4, X52277), domdomain(2, X52280), domdomain(2, X52281).
legal(xplayer, noop, X52286) :- true(control(oplayer), X52286), tdom(X52286).
legal(random, noop, X52286) :- true(control(oplayer), X52286), tdom(X52286).
legal(random, noop, X52286) :- true(control(xplayer), X52286), tdom(X52286).
legal(oplayer, noop, X52286) :- true(control(xplayer), X52286), tdom(X52286).
legal(oplayer, noop, X52286) :- true(control(random), X52286), tdom(X52286).
legal(xplayer, noop, X52286) :- true(control(random), X52286), tdom(X52286).
legal(random, act(x, 1), X52289) :- true(control(random), X52289), tdom(X52289).
legal(random, act(x, 2), X52289) :- true(control(random), X52289), tdom(X52289).
legal(random, act(x, 3), X52289) :- true(control(random), X52289), tdom(X52289).
legal(random, act(x, 4), X52289) :- true(control(random), X52289), tdom(X52289).
legal(random, act(o, 1), X52289) :- true(control(random), X52289), tdom(X52289).
goal(xplayer, 100, X52284) :- line(x, X52284), tdom(X52284).
goal(xplayer, 50, X52296) :- not line(x, X52296), not line(o, X52296), not open(X52296), tdom(X52296).
goal(xplayer, 0, X52284) :- line(o, X52284), tdom(X52284).
goal(oplayer, 100, X52284) :- line(o, X52284), tdom(X52284).
goal(oplayer, 50, X52296) :- not line(x, X52296), not line(o, X52296), not open(X52296), tdom(X52296).
goal(oplayer, 0, X52284) :- line(x, X52284), tdom(X52284).
terminal(X52281) :- line(x, X52281), tdom(X52281).
terminal(X52281) :- line(o, X52281), tdom(X52281).
terminal(X52281) :- not open(X52281), tdom(X52281).
succ(1, 2).
succ(2, 3).
line(X52277, X52313) :- true(cell(X52283, X52284, X52277), X52313), true(cell(X52283, X52292, X52277), X52313), true(cell(X52283, X52300, X52277), X52313), succ(X52284, X52292), succ(X52292, X52300), domdomain(9, X52292), domdomain(10, X52300), domdomain(9, X52284), domdomain(10, X52292), domdomain(2, X52300), domdomain(2, X52292), domdomain(2, X52283), domdomain(2, X52284), tdom(X52313), domdomain(1, X52277).
line(X52277, X52313) :- true(cell(X52283, X52284, X52277), X52313), true(cell(X52291, X52284, X52277), X52313), true(cell(X52299, X52284, X52277), X52313), succ(X52283, X52291), succ(X52291, X52299), domdomain(9, X52291), domdomain(10, X52299), domdomain(9, X52283), domdomain(10, X52291), domdomain(2, X52299), domdomain(2, X52291), domdomain(2, X52283), domdomain(2, X52284), tdom(X52313), domdomain(1, X52277).
line(X52277, X52323) :- true(cell(X52283, X52284, X52277), X52323), true(cell(X52291, X52292, X52277), X52323), true(cell(X52299, X52300, X52277), X52323), succ(X52283, X52291), succ(X52291, X52299), succ(X52284, X52292), succ(X52292, X52300), domdomain(9, X52292), domdomain(10, X52300), domdomain(9, X52284), domdomain(10, X52292), domdomain(9, X52291), domdomain(10, X52299), domdomain(9, X52283), domdomain(10, X52291), domdomain(2, X52299), domdomain(2, X52300), domdomain(2, X52291), domdomain(2, X52292), domdomain(2, X52283), domdomain(2, X52284), tdom(X52323), domdomain(1, X52277).
line(X52276, X52322) :- true(cell(X52282, X52283, X52276), X52322), true(cell(X52290, X52291, X52276), X52322), true(cell(X52298, X52299, X52276), X52322), succ(X52298, X52290), succ(X52290, X52282), succ(X52283, X52291), succ(X52291, X52299), domdomain(9, X52291), domdomain(10, X52299), domdomain(9, X52283), domdomain(10, X52291), domdomain(9, X52290), domdomain(10, X52282), domdomain(9, X52298), domdomain(10, X52290), domdomain(2, X52298), domdomain(2, X52299), domdomain(2, X52290), domdomain(2, X52291), domdomain(2, X52282), domdomain(2, X52283), tdom(X52322), domdomain(1, X52276).
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
domdomain(4, random).
domdomain(4, xplayer).
domdomain(5, oplayer).
domdomain(5, xplayer).
domdomain(6, 0).
domdomain(6, 50).
domdomain(6, 100).
domdomain(7, control).
domdomain(8, act).
domdomain(8, mark).
domdomain(8, noop).
domdomain(9, 1).
domdomain(9, 2).
domdomain(10, 2).
domdomain(10, 3).
