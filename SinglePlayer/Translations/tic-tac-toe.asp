mtdom(1..9).
role(xplayer).
role(oplayer).
index(1).
index(2).
index(3).
base(cell(X35236, X35237, b)) :- index(X35236), index(X35237), domdomain(2, X35236), domdomain(2, X35237).
base(cell(X35236, X35237, x)) :- index(X35236), index(X35237), domdomain(2, X35236), domdomain(2, X35237).
base(cell(X35236, X35237, o)) :- index(X35236), index(X35237), domdomain(2, X35236), domdomain(2, X35237).
base(control(X35236)) :- role(X35236), domdomain(4, X35236).
input(X35234, mark(X35237, X35238)) :- index(X35237), index(X35238), role(X35234), domdomain(4, X35234), domdomain(2, X35237), domdomain(2, X35238).
input(X35234, noop) :- role(X35234), domdomain(4, X35234).
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
true(cell(X35236, X35237, x), X35256 + 1) :- does(xplayer, mark(X35236, X35237), X35256), true(cell(X35236, X35237, b), X35256), mtdom(X35256), domdomain(2, X35236), domdomain(2, X35237).
true(cell(X35236, X35237, o), X35256 + 1) :- does(oplayer, mark(X35236, X35237), X35256), true(cell(X35236, X35237, b), X35256), mtdom(X35256), domdomain(2, X35236), domdomain(2, X35237).
true(cell(X35236, X35237, X35238), X35253 + 1) :- true(cell(X35236, X35237, X35238), X35253), X35238 != b, mtdom(X35253), domdomain(2, X35236), domdomain(2, X35237), domdomain(3, X35238).
true(cell(X35236, X35237, b), X35267 + 1) :- does(X35242, mark(X35245, X35246), X35267), true(cell(X35236, X35237, b), X35267), 1 { X35236 != X35245 ; X35237 != X35246 }, domdomain(4, X35242), domdomain(2, X35245), domdomain(2, X35246), mtdom(X35267), domdomain(2, X35236), domdomain(2, X35237).
true(control(xplayer), X35244 + 1) :- true(control(oplayer), X35244), mtdom(X35244).
true(control(oplayer), X35244 + 1) :- true(control(xplayer), X35244), mtdom(X35244).
row(X35234, X35235, X35261) :- true(cell(X35234, 1, X35235), X35261), true(cell(X35234, 2, X35235), X35261), true(cell(X35234, 3, X35235), X35261), tdom(X35261), domdomain(2, X35234), domdomain(3, X35235).
column(X35234, X35235, X35261) :- true(cell(1, X35234, X35235), X35261), true(cell(2, X35234, X35235), X35261), true(cell(3, X35234, X35235), X35261), tdom(X35261), domdomain(2, X35234), domdomain(3, X35235).
diagonal(X35234, X35260) :- true(cell(1, 1, X35234), X35260), true(cell(2, 2, X35234), X35260), true(cell(3, 3, X35234), X35260), tdom(X35260), domdomain(3, X35234).
diagonal(X35234, X35260) :- true(cell(1, 3, X35234), X35260), true(cell(2, 2, X35234), X35260), true(cell(3, 1, X35234), X35260), tdom(X35260), domdomain(3, X35234).
line(X35234, X35241) :- row(X35238, X35234, X35241), domdomain(2, X35238), tdom(X35241), domdomain(3, X35234).
line(X35234, X35241) :- column(X35238, X35234, X35241), domdomain(2, X35238), tdom(X35241), domdomain(3, X35234).
line(X35234, X35240) :- diagonal(X35234, X35240), tdom(X35240), domdomain(3, X35234).
open(X35242) :- true(cell(X35238, X35239, b), X35242), domdomain(2, X35238), domdomain(2, X35239), tdom(X35242).
legal(X35234, mark(X35237, X35238), X35254) :- true(cell(X35237, X35238, b), X35254), true(control(X35234), X35254), tdom(X35254), domdomain(4, X35234), domdomain(2, X35237), domdomain(2, X35238).
legal(xplayer, noop, X35243) :- true(control(oplayer), X35243), tdom(X35243).
legal(oplayer, noop, X35243) :- true(control(xplayer), X35243), tdom(X35243).
goal(xplayer, 100, X35241) :- line(x, X35241), tdom(X35241).
goal(xplayer, 50, X35253) :- not line(x, X35253), not line(o, X35253), not open(X35253), tdom(X35253).
goal(xplayer, 0, X35241) :- line(o, X35241), tdom(X35241).
goal(oplayer, 100, X35241) :- line(o, X35241), tdom(X35241).
goal(oplayer, 50, X35253) :- not line(x, X35253), not line(o, X35253), not open(X35253), tdom(X35253).
goal(oplayer, 0, X35241) :- line(x, X35241), tdom(X35241).
terminal(X35238) :- line(x, X35238), tdom(X35238).
terminal(X35238) :- line(o, X35238), tdom(X35238).
terminal(X35237) :- not open(X35237), tdom(X35237).
domdomain(1, cell).
domdomain(1, control).
domdomain(2, 1).
domdomain(2, 2).
domdomain(2, 3).
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
