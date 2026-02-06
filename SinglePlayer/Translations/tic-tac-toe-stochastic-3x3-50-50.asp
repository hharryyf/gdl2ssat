mtdom(1..18).
role(xplayer).
role(oplayer).
role(random).
index(1).
index(2).
index(3).
base(cell(X48794, X48795, x)) :- index(X48794), index(X48795), domdomain(4, X48794), domdomain(4, X48795).
base(cell(X48794, X48795, o)) :- index(X48794), index(X48795), domdomain(4, X48794), domdomain(4, X48795).
base(prev(X48794, X48795, x)) :- domdomain(4, X48794), domdomain(4, X48795).
base(prev(X48794, X48795, o)) :- domdomain(4, X48794), domdomain(4, X48795).
base(control(X48794)) :- role(X48794), domdomain(5, X48794).
base(prevplayer(xplayer)).
base(prevplayer(oplayer)).
input(xplayer, mark(X48795, X48796)) :- index(X48795), index(X48796), domdomain(4, X48795), domdomain(4, X48796).
input(oplayer, mark(X48795, X48796)) :- index(X48795), index(X48796), domdomain(4, X48795), domdomain(4, X48796).
input(random, act(x, 1)).
input(random, act(o, 1)).
input(X48792, noop) :- role(X48792), domdomain(5, X48792).
true(control(xplayer), 1).
true(prev(X48794, X48795, x), X48806 + 1) :- does(xplayer, mark(X48794, X48795), X48806), mtdom(X48806), domdomain(4, X48794), domdomain(4, X48795).
true(prev(X48794, X48795, o), X48806 + 1) :- does(oplayer, mark(X48794, X48795), X48806), mtdom(X48806), domdomain(4, X48794), domdomain(4, X48795).
true(cell(X48794, X48795, x), X48814 + 1) :- does(random, act(x, X48804), X48814), true(prev(X48794, X48795, x), X48814), domdomain(2, X48804), mtdom(X48814), domdomain(4, X48794), domdomain(4, X48795).
true(cell(X48794, X48795, o), X48814 + 1) :- does(random, act(o, X48804), X48814), true(prev(X48794, X48795, x), X48814), domdomain(2, X48804), mtdom(X48814), domdomain(4, X48794), domdomain(4, X48795).
true(cell(X48794, X48795, o), X48814 + 1) :- does(random, act(x, X48804), X48814), true(prev(X48794, X48795, o), X48814), domdomain(2, X48804), mtdom(X48814), domdomain(4, X48794), domdomain(4, X48795).
true(cell(X48794, X48795, x), X48814 + 1) :- does(random, act(o, X48804), X48814), true(prev(X48794, X48795, o), X48814), domdomain(2, X48804), mtdom(X48814), domdomain(4, X48794), domdomain(4, X48795).
true(cell(X48794, X48795, X48796), X48806 + 1) :- true(cell(X48794, X48795, X48796), X48806), mtdom(X48806), domdomain(4, X48794), domdomain(4, X48795), domdomain(1, X48796).
true(prevplayer(oplayer), X48802 + 1) :- true(control(oplayer), X48802), mtdom(X48802).
true(control(random), X48802 + 1) :- true(control(oplayer), X48802), mtdom(X48802).
true(control(random), X48802 + 1) :- true(control(xplayer), X48802), mtdom(X48802).
true(prevplayer(xplayer), X48802 + 1) :- true(control(xplayer), X48802), mtdom(X48802).
true(control(xplayer), X48808 + 1) :- true(control(random), X48808), true(prevplayer(oplayer), X48808), mtdom(X48808).
true(control(oplayer), X48808 + 1) :- true(control(random), X48808), true(prevplayer(xplayer), X48808), mtdom(X48808).
open(X48820) :- not true(cell(X48798, X48799, x), X48820), not true(cell(X48798, X48799, o), X48820), index(X48798), index(X48799), domdomain(4, X48798), domdomain(4, X48799), tdom(X48820).
legal(X48792, mark(X48795, X48796), X48837) :- not true(cell(X48795, X48796, x), X48837), not true(cell(X48795, X48796, o), X48837), true(control(X48792), X48837), X48792 != random, index(X48795), index(X48796), tdom(X48837), domdomain(5, X48792), domdomain(4, X48795), domdomain(4, X48796).
legal(xplayer, noop, X48801) :- true(control(oplayer), X48801), tdom(X48801).
legal(random, noop, X48801) :- true(control(oplayer), X48801), tdom(X48801).
legal(random, noop, X48801) :- true(control(xplayer), X48801), tdom(X48801).
legal(oplayer, noop, X48801) :- true(control(xplayer), X48801), tdom(X48801).
legal(oplayer, noop, X48801) :- true(control(random), X48801), tdom(X48801).
legal(xplayer, noop, X48801) :- true(control(random), X48801), tdom(X48801).
legal(random, act(x, 1), X48804) :- true(control(random), X48804), tdom(X48804).
legal(random, act(o, 1), X48804) :- true(control(random), X48804), tdom(X48804).
goal(xplayer, 100, X48799) :- line(x, X48799), tdom(X48799).
goal(xplayer, 50, X48811) :- not line(x, X48811), not line(o, X48811), not open(X48811), tdom(X48811).
goal(xplayer, 0, X48799) :- line(o, X48799), tdom(X48799).
goal(oplayer, 100, X48799) :- line(o, X48799), tdom(X48799).
goal(oplayer, 50, X48811) :- not line(x, X48811), not line(o, X48811), not open(X48811), tdom(X48811).
goal(oplayer, 0, X48799) :- line(x, X48799), tdom(X48799).
terminal(X48796) :- line(x, X48796), tdom(X48796).
terminal(X48796) :- line(o, X48796), tdom(X48796).
terminal(X48796) :- not open(X48796), tdom(X48796).
succ(1, 2).
succ(2, 3).
line(X48792, X48828) :- true(cell(X48798, X48799, X48792), X48828), true(cell(X48798, X48807, X48792), X48828), true(cell(X48798, X48815, X48792), X48828), succ(X48799, X48807), succ(X48807, X48815), domdomain(10, X48807), domdomain(11, X48815), domdomain(10, X48799), domdomain(11, X48807), domdomain(4, X48815), domdomain(4, X48807), domdomain(4, X48798), domdomain(4, X48799), tdom(X48828), domdomain(1, X48792).
line(X48792, X48828) :- true(cell(X48798, X48799, X48792), X48828), true(cell(X48806, X48799, X48792), X48828), true(cell(X48814, X48799, X48792), X48828), succ(X48798, X48806), succ(X48806, X48814), domdomain(10, X48806), domdomain(11, X48814), domdomain(10, X48798), domdomain(11, X48806), domdomain(4, X48814), domdomain(4, X48806), domdomain(4, X48798), domdomain(4, X48799), tdom(X48828), domdomain(1, X48792).
line(X48792, X48838) :- true(cell(X48798, X48799, X48792), X48838), true(cell(X48806, X48807, X48792), X48838), true(cell(X48814, X48815, X48792), X48838), succ(X48798, X48806), succ(X48806, X48814), succ(X48799, X48807), succ(X48807, X48815), domdomain(10, X48807), domdomain(11, X48815), domdomain(10, X48799), domdomain(11, X48807), domdomain(10, X48806), domdomain(11, X48814), domdomain(10, X48798), domdomain(11, X48806), domdomain(4, X48814), domdomain(4, X48815), domdomain(4, X48806), domdomain(4, X48807), domdomain(4, X48798), domdomain(4, X48799), tdom(X48838), domdomain(1, X48792).
line(X48791, X48837) :- true(cell(X48797, X48798, X48791), X48837), true(cell(X48805, X48806, X48791), X48837), true(cell(X48813, X48814, X48791), X48837), succ(X48813, X48805), succ(X48805, X48797), succ(X48798, X48806), succ(X48806, X48814), domdomain(10, X48806), domdomain(11, X48814), domdomain(10, X48798), domdomain(11, X48806), domdomain(10, X48805), domdomain(11, X48797), domdomain(10, X48813), domdomain(11, X48805), domdomain(4, X48813), domdomain(4, X48814), domdomain(4, X48805), domdomain(4, X48806), domdomain(4, X48797), domdomain(4, X48798), tdom(X48837), domdomain(1, X48791).
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
