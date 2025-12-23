mtdom(1..9).
role(xplayer).
role(oplayer).
role(random).
index(1).
index(2).
index(3).
base(cell(X43759, X43760, b)) :- index(X43759), index(X43760), domdomain(2, X43759), domdomain(2, X43760).
base(cell(X43759, X43760, x)) :- index(X43759), index(X43760), domdomain(2, X43759), domdomain(2, X43760).
base(cell(X43759, X43760, o)) :- index(X43759), index(X43760), domdomain(2, X43759), domdomain(2, X43760).
base(control(X43759)) :- role(X43759), domdomain(4, X43759).
base(round(1)).
input(xplayer, mark(X43760, X43761)) :- index(X43760), index(X43761), role(xplayer), domdomain(2, X43760), domdomain(2, X43761).
input(oplayer, mark(X43760, X43761)) :- index(X43760), index(X43761), role(oplayer), domdomain(2, X43760), domdomain(2, X43761).
input(random, mark(X43760, X43761)) :- index(X43760), index(X43761), role(random), domdomain(2, X43760), domdomain(2, X43761).
input(X43757, noop) :- role(X43757), domdomain(4, X43757).
true(cell(1, 1, b), 1).
true(cell(1, 2, b), 1).
true(cell(1, 3, b), 1).
true(cell(2, 1, b), 1).
true(cell(2, 2, b), 1).
true(cell(2, 3, b), 1).
true(cell(3, 1, b), 1).
true(cell(3, 2, b), 1).
true(cell(3, 3, b), 1).
true(round(1), 1).
true(control(xplayer), 1).
true(cell(X43759, X43760, x), X43779 + 1) :- does(xplayer, mark(X43759, X43760), X43779), true(cell(X43759, X43760, b), X43779), mtdom(X43779), domdomain(2, X43759), domdomain(2, X43760).
true(cell(X43759, X43760, o), X43779 + 1) :- does(oplayer, mark(X43759, X43760), X43779), true(cell(X43759, X43760, b), X43779), mtdom(X43779), domdomain(2, X43759), domdomain(2, X43760).
true(cell(X43759, X43760, o), X43779 + 1) :- does(random, mark(X43759, X43760), X43779), true(cell(X43759, X43760, b), X43779), mtdom(X43779), domdomain(2, X43759), domdomain(2, X43760).
true(cell(X43759, X43760, X43761), X43776 + 1) :- true(cell(X43759, X43760, X43761), X43776), X43761 != b, mtdom(X43776), domdomain(2, X43759), domdomain(2, X43760), domdomain(3, X43761).
true(cell(X43759, X43760, b), X43790 + 1) :- does(X43765, mark(X43768, X43769), X43790), true(cell(X43759, X43760, b), X43790), 1 { X43759 != X43768 ; X43760 != X43769 }, domdomain(4, X43765), domdomain(2, X43768), domdomain(2, X43769), mtdom(X43790), domdomain(2, X43759), domdomain(2, X43760).
true(control(xplayer), X43767 + 1) :- true(control(oplayer), X43767), mtdom(X43767).
true(control(oplayer), X43775 + 1) :- true(control(xplayer), X43775), not true(round(1), X43775), mtdom(X43775).
true(control(xplayer), X43767 + 1) :- true(control(random), X43767), mtdom(X43767).
true(control(random), X43773 + 1) :- true(control(xplayer), X43773), true(round(1), X43773), mtdom(X43773).
row(X43757, X43758, X43784) :- true(cell(X43757, 1, X43758), X43784), true(cell(X43757, 2, X43758), X43784), true(cell(X43757, 3, X43758), X43784), tdom(X43784), domdomain(2, X43757), domdomain(3, X43758).
column(X43757, X43758, X43784) :- true(cell(1, X43757, X43758), X43784), true(cell(2, X43757, X43758), X43784), true(cell(3, X43757, X43758), X43784), tdom(X43784), domdomain(2, X43757), domdomain(3, X43758).
diagonal(X43757, X43783) :- true(cell(1, 1, X43757), X43783), true(cell(2, 2, X43757), X43783), true(cell(3, 3, X43757), X43783), tdom(X43783), domdomain(3, X43757).
diagonal(X43757, X43783) :- true(cell(1, 3, X43757), X43783), true(cell(2, 2, X43757), X43783), true(cell(3, 1, X43757), X43783), tdom(X43783), domdomain(3, X43757).
line(X43757, X43764) :- row(X43761, X43757, X43764), domdomain(2, X43761), tdom(X43764), domdomain(3, X43757).
line(X43757, X43764) :- column(X43761, X43757, X43764), domdomain(2, X43761), tdom(X43764), domdomain(3, X43757).
line(X43757, X43763) :- diagonal(X43757, X43763), tdom(X43763), domdomain(3, X43757).
open(X43765) :- true(cell(X43761, X43762, b), X43765), domdomain(2, X43761), domdomain(2, X43762), tdom(X43765).
legal(X43757, mark(X43760, X43761), X43777) :- true(cell(X43760, X43761, b), X43777), true(control(X43757), X43777), tdom(X43777), domdomain(4, X43757), domdomain(2, X43760), domdomain(2, X43761).
legal(xplayer, noop, X43766) :- true(control(oplayer), X43766), tdom(X43766).
legal(random, noop, X43766) :- true(control(oplayer), X43766), tdom(X43766).
legal(xplayer, noop, X43766) :- true(control(random), X43766), tdom(X43766).
legal(oplayer, noop, X43766) :- true(control(random), X43766), tdom(X43766).
legal(random, noop, X43766) :- true(control(xplayer), X43766), tdom(X43766).
legal(oplayer, noop, X43766) :- true(control(xplayer), X43766), tdom(X43766).
goal(xplayer, 100, X43764) :- line(x, X43764), tdom(X43764).
goal(random, 0, X43760) :- tdom(X43760).
goal(xplayer, 50, X43776) :- not line(x, X43776), not line(o, X43776), not open(X43776), tdom(X43776).
goal(xplayer, 0, X43764) :- line(o, X43764), tdom(X43764).
goal(oplayer, 100, X43764) :- line(o, X43764), tdom(X43764).
goal(oplayer, 50, X43776) :- not line(x, X43776), not line(o, X43776), not open(X43776), tdom(X43776).
goal(oplayer, 0, X43764) :- line(x, X43764), tdom(X43764).
terminal(X43761) :- line(x, X43761), tdom(X43761).
terminal(X43761) :- line(o, X43761), tdom(X43761).
terminal(X43760) :- not open(X43760), tdom(X43760).
domdomain(1, cell).
domdomain(1, control).
domdomain(1, round).
domdomain(2, 1).
domdomain(2, 2).
domdomain(2, 3).
domdomain(3, b).
domdomain(3, o).
domdomain(3, x).
domdomain(4, oplayer).
domdomain(4, random).
domdomain(4, xplayer).
domdomain(5, 0).
domdomain(5, 50).
domdomain(5, 100).
domdomain(6, mark).
domdomain(6, noop).
domdomain(7, cell).
domdomain(7, control).
domdomain(8, 1).
