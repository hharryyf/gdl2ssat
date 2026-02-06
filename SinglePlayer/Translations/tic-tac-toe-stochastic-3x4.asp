mtdom(1..24).
role(xplayer).
role(oplayer).
role(random).
xindex(1).
xindex(2).
xindex(3).
yindex(1).
yindex(2).
yindex(3).
yindex(4).
base(cell(X53300, X53301, x)) :- xindex(X53300), yindex(X53301), domdomain(4, X53300), domdomain(2, X53301).
base(cell(X53300, X53301, o)) :- xindex(X53300), yindex(X53301), domdomain(4, X53300), domdomain(2, X53301).
base(prev(X53300, X53301, x)) :- domdomain(4, X53300), domdomain(2, X53301).
base(prev(X53300, X53301, o)) :- domdomain(4, X53300), domdomain(2, X53301).
base(control(X53300)) :- role(X53300), domdomain(5, X53300).
base(prevplayer(xplayer)).
base(prevplayer(oplayer)).
input(xplayer, mark(X53301, X53302)) :- xindex(X53301), yindex(X53302), domdomain(4, X53301), domdomain(2, X53302).
input(oplayer, mark(X53301, X53302)) :- xindex(X53301), yindex(X53302), domdomain(4, X53301), domdomain(2, X53302).
input(random, act(x, 1)).
input(random, act(x, 2)).
input(random, act(x, 3)).
input(random, act(x, 4)).
input(random, act(o, 1)).
input(X53298, noop) :- role(X53298), domdomain(5, X53298).
true(control(xplayer), 1).
true(prev(X53300, X53301, x), X53312 + 1) :- does(xplayer, mark(X53300, X53301), X53312), mtdom(X53312), domdomain(4, X53300), domdomain(2, X53301).
true(prev(X53300, X53301, o), X53312 + 1) :- does(oplayer, mark(X53300, X53301), X53312), mtdom(X53312), domdomain(4, X53300), domdomain(2, X53301).
true(cell(X53300, X53301, x), X53320 + 1) :- does(random, act(x, X53310), X53320), true(prev(X53300, X53301, x), X53320), domdomain(2, X53310), mtdom(X53320), domdomain(4, X53300), domdomain(2, X53301).
true(cell(X53300, X53301, o), X53320 + 1) :- does(random, act(o, X53310), X53320), true(prev(X53300, X53301, x), X53320), domdomain(2, X53310), mtdom(X53320), domdomain(4, X53300), domdomain(2, X53301).
true(cell(X53300, X53301, o), X53320 + 1) :- does(random, act(x, X53310), X53320), true(prev(X53300, X53301, o), X53320), domdomain(2, X53310), mtdom(X53320), domdomain(4, X53300), domdomain(2, X53301).
true(cell(X53300, X53301, x), X53320 + 1) :- does(random, act(o, X53310), X53320), true(prev(X53300, X53301, o), X53320), domdomain(2, X53310), mtdom(X53320), domdomain(4, X53300), domdomain(2, X53301).
true(cell(X53300, X53301, X53302), X53312 + 1) :- true(cell(X53300, X53301, X53302), X53312), mtdom(X53312), domdomain(4, X53300), domdomain(2, X53301), domdomain(1, X53302).
true(prevplayer(oplayer), X53308 + 1) :- true(control(oplayer), X53308), mtdom(X53308).
true(control(random), X53308 + 1) :- true(control(oplayer), X53308), mtdom(X53308).
true(control(random), X53308 + 1) :- true(control(xplayer), X53308), mtdom(X53308).
true(prevplayer(xplayer), X53308 + 1) :- true(control(xplayer), X53308), mtdom(X53308).
true(control(xplayer), X53314 + 1) :- true(control(random), X53314), true(prevplayer(oplayer), X53314), mtdom(X53314).
true(control(oplayer), X53314 + 1) :- true(control(random), X53314), true(prevplayer(xplayer), X53314), mtdom(X53314).
open(X53326) :- not true(cell(X53304, X53305, x), X53326), not true(cell(X53304, X53305, o), X53326), xindex(X53304), yindex(X53305), domdomain(4, X53304), domdomain(2, X53305), tdom(X53326).
legal(X53298, mark(X53301, X53302), X53343) :- not true(cell(X53301, X53302, x), X53343), not true(cell(X53301, X53302, o), X53343), true(control(X53298), X53343), X53298 != random, xindex(X53301), yindex(X53302), tdom(X53343), domdomain(5, X53298), domdomain(4, X53301), domdomain(2, X53302).
legal(xplayer, noop, X53307) :- true(control(oplayer), X53307), tdom(X53307).
legal(random, noop, X53307) :- true(control(oplayer), X53307), tdom(X53307).
legal(random, noop, X53307) :- true(control(xplayer), X53307), tdom(X53307).
legal(oplayer, noop, X53307) :- true(control(xplayer), X53307), tdom(X53307).
legal(oplayer, noop, X53307) :- true(control(random), X53307), tdom(X53307).
legal(xplayer, noop, X53307) :- true(control(random), X53307), tdom(X53307).
legal(random, act(x, 1), X53310) :- true(control(random), X53310), tdom(X53310).
legal(random, act(x, 2), X53310) :- true(control(random), X53310), tdom(X53310).
legal(random, act(x, 3), X53310) :- true(control(random), X53310), tdom(X53310).
legal(random, act(x, 4), X53310) :- true(control(random), X53310), tdom(X53310).
legal(random, act(o, 1), X53310) :- true(control(random), X53310), tdom(X53310).
goal(xplayer, 100, X53305) :- line(x, X53305), tdom(X53305).
goal(xplayer, 50, X53317) :- not line(x, X53317), not line(o, X53317), not open(X53317), tdom(X53317).
goal(xplayer, 0, X53305) :- line(o, X53305), tdom(X53305).
goal(oplayer, 100, X53305) :- line(o, X53305), tdom(X53305).
goal(oplayer, 50, X53317) :- not line(x, X53317), not line(o, X53317), not open(X53317), tdom(X53317).
goal(oplayer, 0, X53305) :- line(x, X53305), tdom(X53305).
terminal(X53302) :- line(x, X53302), tdom(X53302).
terminal(X53302) :- line(o, X53302), tdom(X53302).
terminal(X53302) :- not open(X53302), tdom(X53302).
succ(1, 2).
succ(2, 3).
succ(3, 4).
line(X53298, X53334) :- true(cell(X53304, X53305, X53298), X53334), true(cell(X53304, X53313, X53298), X53334), true(cell(X53304, X53321, X53298), X53334), succ(X53305, X53313), succ(X53313, X53321), domdomain(4, X53313), domdomain(10, X53321), domdomain(4, X53305), domdomain(10, X53313), domdomain(2, X53321), domdomain(2, X53313), domdomain(4, X53304), domdomain(2, X53305), tdom(X53334), domdomain(1, X53298).
line(X53298, X53334) :- true(cell(X53304, X53305, X53298), X53334), true(cell(X53312, X53305, X53298), X53334), true(cell(X53320, X53305, X53298), X53334), succ(X53304, X53312), succ(X53312, X53320), domdomain(10, X53320), domdomain(10, X53312), domdomain(4, X53320), domdomain(4, X53312), domdomain(4, X53304), domdomain(2, X53305), tdom(X53334), domdomain(1, X53298).
line(X53298, X53344) :- true(cell(X53304, X53305, X53298), X53344), true(cell(X53312, X53313, X53298), X53344), true(cell(X53320, X53321, X53298), X53344), succ(X53304, X53312), succ(X53312, X53320), succ(X53305, X53313), succ(X53313, X53321), domdomain(4, X53313), domdomain(10, X53321), domdomain(4, X53305), domdomain(10, X53313), domdomain(10, X53320), domdomain(10, X53312), domdomain(4, X53320), domdomain(2, X53321), domdomain(4, X53312), domdomain(2, X53313), domdomain(4, X53304), domdomain(2, X53305), tdom(X53344), domdomain(1, X53298).
line(X53297, X53343) :- true(cell(X53303, X53304, X53297), X53343), true(cell(X53311, X53312, X53297), X53343), true(cell(X53319, X53320, X53297), X53343), succ(X53319, X53311), succ(X53311, X53303), succ(X53304, X53312), succ(X53312, X53320), domdomain(4, X53312), domdomain(10, X53320), domdomain(4, X53304), domdomain(10, X53312), domdomain(10, X53303), domdomain(10, X53311), domdomain(4, X53319), domdomain(2, X53320), domdomain(4, X53311), domdomain(2, X53312), domdomain(4, X53303), domdomain(2, X53304), tdom(X53343), domdomain(1, X53297).
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
domdomain(10, 2).
domdomain(10, 3).
domdomain(10, 4).
