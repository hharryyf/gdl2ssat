mtdom(1..16).
role(xplayer).
role(oplayer).
index(1).
index(2).
index(3).
index(4).
succ(1, 2).
succ(2, 3).
succ(3, 4).
base(cell(X40251, X40252, b)) :- index(X40251), index(X40252), domdomain(2, X40251), domdomain(2, X40252).
base(cell(X40251, X40252, x)) :- index(X40251), index(X40252), domdomain(2, X40251), domdomain(2, X40252).
base(cell(X40251, X40252, o)) :- index(X40251), index(X40252), domdomain(2, X40251), domdomain(2, X40252).
base(control(X40251)) :- role(X40251), domdomain(4, X40251).
input(X40249, mark(X40252, X40253)) :- index(X40252), index(X40253), role(X40249), domdomain(4, X40249), domdomain(2, X40252), domdomain(2, X40253).
input(X40249, noop) :- role(X40249), domdomain(4, X40249).
true(cell(1, 1, b), 1).
true(cell(1, 2, b), 1).
true(cell(1, 3, b), 1).
true(cell(1, 4, b), 1).
true(cell(2, 1, b), 1).
true(cell(2, 2, b), 1).
true(cell(2, 3, b), 1).
true(cell(2, 4, b), 1).
true(cell(3, 1, b), 1).
true(cell(3, 2, b), 1).
true(cell(3, 3, b), 1).
true(cell(3, 4, b), 1).
true(cell(4, 1, b), 1).
true(cell(4, 2, b), 1).
true(cell(4, 3, b), 1).
true(cell(4, 4, b), 1).
true(control(xplayer), 1).
true(cell(X40251, X40252, x), X40271 + 1) :- does(xplayer, mark(X40251, X40252), X40271), true(cell(X40251, X40252, b), X40271), mtdom(X40271), domdomain(2, X40251), domdomain(2, X40252).
true(cell(X40251, X40252, o), X40271 + 1) :- does(oplayer, mark(X40251, X40252), X40271), true(cell(X40251, X40252, b), X40271), mtdom(X40271), domdomain(2, X40251), domdomain(2, X40252).
true(cell(X40251, X40252, X40253), X40268 + 1) :- true(cell(X40251, X40252, X40253), X40268), X40253 != b, mtdom(X40268), domdomain(2, X40251), domdomain(2, X40252), domdomain(3, X40253).
true(cell(X40251, X40252, b), X40276 + 1) :- does(X40257, mark(X40260, X40261), X40276), true(cell(X40251, X40252, b), X40276), X40251 != X40260, domdomain(4, X40257), domdomain(2, X40260), domdomain(2, X40261), mtdom(X40276), domdomain(2, X40251), domdomain(2, X40252).
true(cell(X40251, X40252, b), X40276 + 1) :- does(X40257, mark(X40260, X40261), X40276), true(cell(X40251, X40252, b), X40276), X40252 != X40261, domdomain(4, X40257), domdomain(2, X40260), domdomain(2, X40261), mtdom(X40276), domdomain(2, X40251), domdomain(2, X40252).
true(control(xplayer), X40259 + 1) :- true(control(oplayer), X40259), mtdom(X40259).
true(control(oplayer), X40259 + 1) :- true(control(xplayer), X40259), mtdom(X40259).
line(X40249, X40285) :- true(cell(X40255, X40256, X40249), X40285), true(cell(X40255, X40264, X40249), X40285), true(cell(X40255, X40272, X40249), X40285), succ(X40256, X40264), succ(X40264, X40272), domdomain(7, X40264), domdomain(8, X40272), domdomain(7, X40256), domdomain(8, X40264), domdomain(2, X40272), domdomain(2, X40264), domdomain(2, X40255), domdomain(2, X40256), tdom(X40285), domdomain(3, X40249).
line(X40249, X40285) :- true(cell(X40255, X40256, X40249), X40285), true(cell(X40263, X40256, X40249), X40285), true(cell(X40271, X40256, X40249), X40285), succ(X40255, X40263), succ(X40263, X40271), domdomain(7, X40263), domdomain(8, X40271), domdomain(7, X40255), domdomain(8, X40263), domdomain(2, X40271), domdomain(2, X40263), domdomain(2, X40255), domdomain(2, X40256), tdom(X40285), domdomain(3, X40249).
line(X40249, X40295) :- true(cell(X40255, X40256, X40249), X40295), true(cell(X40263, X40264, X40249), X40295), true(cell(X40271, X40272, X40249), X40295), succ(X40255, X40263), succ(X40263, X40271), succ(X40256, X40264), succ(X40264, X40272), domdomain(7, X40264), domdomain(8, X40272), domdomain(7, X40256), domdomain(8, X40264), domdomain(7, X40263), domdomain(8, X40271), domdomain(7, X40255), domdomain(8, X40263), domdomain(2, X40271), domdomain(2, X40272), domdomain(2, X40263), domdomain(2, X40264), domdomain(2, X40255), domdomain(2, X40256), tdom(X40295), domdomain(3, X40249).
line(X40249, X40295) :- true(cell(X40255, X40256, X40249), X40295), true(cell(X40263, X40264, X40249), X40295), true(cell(X40271, X40272, X40249), X40295), succ(X40271, X40263), succ(X40263, X40255), succ(X40256, X40264), succ(X40264, X40272), domdomain(7, X40264), domdomain(8, X40272), domdomain(7, X40256), domdomain(8, X40264), domdomain(7, X40263), domdomain(8, X40255), domdomain(7, X40271), domdomain(8, X40263), domdomain(2, X40271), domdomain(2, X40272), domdomain(2, X40263), domdomain(2, X40264), domdomain(2, X40255), domdomain(2, X40256), tdom(X40295), domdomain(3, X40249).
open(X40257) :- true(cell(X40253, X40254, b), X40257), domdomain(2, X40253), domdomain(2, X40254), tdom(X40257).
legal(X40249, mark(X40252, X40253), X40269) :- true(cell(X40252, X40253, b), X40269), true(control(X40249), X40269), tdom(X40269), domdomain(4, X40249), domdomain(2, X40252), domdomain(2, X40253).
legal(xplayer, noop, X40258) :- true(control(oplayer), X40258), tdom(X40258).
legal(oplayer, noop, X40258) :- true(control(xplayer), X40258), tdom(X40258).
goal(xplayer, 100, X40256) :- line(x, X40256), tdom(X40256).
goal(xplayer, 50, X40268) :- not line(x, X40268), not line(o, X40268), not open(X40268), tdom(X40268).
goal(xplayer, 0, X40256) :- line(o, X40256), tdom(X40256).
goal(oplayer, 100, X40256) :- line(o, X40256), tdom(X40256).
goal(oplayer, 50, X40268) :- not line(x, X40268), not line(o, X40268), not open(X40268), tdom(X40268).
goal(oplayer, 0, X40256) :- line(x, X40256), tdom(X40256).
terminal(X40253) :- line(x, X40253), tdom(X40253).
terminal(X40253) :- line(o, X40253), tdom(X40253).
terminal(X40252) :- not open(X40252), tdom(X40252).
domdomain(1, cell).
domdomain(1, control).
domdomain(2, 1).
domdomain(2, 2).
domdomain(2, 3).
domdomain(2, 4).
domdomain(3, b).
domdomain(3, o).
domdomain(3, x).
domdomain(4, oplayer).
domdomain(4, xplayer).
domdomain(5, 0).
domdomain(5, 50).
domdomain(5, 100).
domdomain(6, mark).
domdomain(6, noop).
domdomain(7, 1).
domdomain(7, 2).
domdomain(7, 3).
domdomain(8, 2).
domdomain(8, 3).
domdomain(8, 4).
