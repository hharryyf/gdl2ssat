mtdom(1..18).
role(xplayer).
role(oplayer).
role(random).
index(1).
index(2).
index(3).
base(cell(X52105, X52106, x)) :- index(X52105), index(X52106), domdomain(2, X52105), domdomain(2, X52106).
base(cell(X52105, X52106, o)) :- index(X52105), index(X52106), domdomain(2, X52105), domdomain(2, X52106).
base(prev(X52105, X52106, x)) :- domdomain(2, X52105), domdomain(2, X52106).
base(prev(X52105, X52106, o)) :- domdomain(2, X52105), domdomain(2, X52106).
base(control(X52105)) :- role(X52105), domdomain(4, X52105).
base(prevplayer(xplayer)).
base(prevplayer(oplayer)).
input(xplayer, mark(X52106, X52107)) :- index(X52106), index(X52107), domdomain(2, X52106), domdomain(2, X52107).
input(oplayer, mark(X52106, X52107)) :- index(X52106), index(X52107), domdomain(2, X52106), domdomain(2, X52107).
input(random, act(x, 1)).
input(random, act(x, 2)).
input(random, act(o, 1)).
input(random, act(o, 2)).
input(random, act(o, 3)).
input(X52103, noop) :- role(X52103), domdomain(4, X52103).
true(control(xplayer), 1).
true(prev(X52105, X52106, x), X52117 + 1) :- does(xplayer, mark(X52105, X52106), X52117), mtdom(X52117), domdomain(2, X52105), domdomain(2, X52106).
true(prev(X52105, X52106, o), X52117 + 1) :- does(oplayer, mark(X52105, X52106), X52117), mtdom(X52117), domdomain(2, X52105), domdomain(2, X52106).
true(cell(X52105, X52106, x), X52125 + 1) :- does(random, act(x, X52115), X52125), true(prev(X52105, X52106, x), X52125), domdomain(2, X52115), mtdom(X52125), domdomain(2, X52105), domdomain(2, X52106).
true(cell(X52105, X52106, o), X52125 + 1) :- does(random, act(o, X52115), X52125), true(prev(X52105, X52106, x), X52125), domdomain(2, X52115), mtdom(X52125), domdomain(2, X52105), domdomain(2, X52106).
true(cell(X52105, X52106, o), X52125 + 1) :- does(random, act(x, X52115), X52125), true(prev(X52105, X52106, o), X52125), domdomain(2, X52115), mtdom(X52125), domdomain(2, X52105), domdomain(2, X52106).
true(cell(X52105, X52106, x), X52125 + 1) :- does(random, act(o, X52115), X52125), true(prev(X52105, X52106, o), X52125), domdomain(2, X52115), mtdom(X52125), domdomain(2, X52105), domdomain(2, X52106).
true(cell(X52105, X52106, X52107), X52117 + 1) :- true(cell(X52105, X52106, X52107), X52117), mtdom(X52117), domdomain(2, X52105), domdomain(2, X52106), domdomain(1, X52107).
true(prevplayer(oplayer), X52113 + 1) :- true(control(oplayer), X52113), mtdom(X52113).
true(control(random), X52113 + 1) :- true(control(oplayer), X52113), mtdom(X52113).
true(control(random), X52113 + 1) :- true(control(xplayer), X52113), mtdom(X52113).
true(prevplayer(xplayer), X52113 + 1) :- true(control(xplayer), X52113), mtdom(X52113).
true(control(xplayer), X52119 + 1) :- true(control(random), X52119), true(prevplayer(oplayer), X52119), mtdom(X52119).
true(control(oplayer), X52119 + 1) :- true(control(random), X52119), true(prevplayer(xplayer), X52119), mtdom(X52119).
open(X52131) :- not true(cell(X52109, X52110, x), X52131), not true(cell(X52109, X52110, o), X52131), index(X52109), index(X52110), domdomain(2, X52109), domdomain(2, X52110), tdom(X52131).
legal(X52103, mark(X52106, X52107), X52148) :- not true(cell(X52106, X52107, x), X52148), not true(cell(X52106, X52107, o), X52148), true(control(X52103), X52148), X52103 != random, index(X52106), index(X52107), tdom(X52148), domdomain(4, X52103), domdomain(2, X52106), domdomain(2, X52107).
legal(xplayer, noop, X52112) :- true(control(oplayer), X52112), tdom(X52112).
legal(random, noop, X52112) :- true(control(oplayer), X52112), tdom(X52112).
legal(random, noop, X52112) :- true(control(xplayer), X52112), tdom(X52112).
legal(oplayer, noop, X52112) :- true(control(xplayer), X52112), tdom(X52112).
legal(oplayer, noop, X52112) :- true(control(random), X52112), tdom(X52112).
legal(xplayer, noop, X52112) :- true(control(random), X52112), tdom(X52112).
legal(random, act(x, 1), X52115) :- true(control(random), X52115), tdom(X52115).
legal(random, act(x, 2), X52115) :- true(control(random), X52115), tdom(X52115).
legal(random, act(o, 1), X52115) :- true(control(random), X52115), tdom(X52115).
legal(random, act(o, 2), X52115) :- true(control(random), X52115), tdom(X52115).
legal(random, act(o, 3), X52115) :- true(control(random), X52115), tdom(X52115).
goal(xplayer, 100, X52110) :- line(x, X52110), tdom(X52110).
goal(xplayer, 50, X52122) :- not line(x, X52122), not line(o, X52122), not open(X52122), tdom(X52122).
goal(xplayer, 0, X52110) :- line(o, X52110), tdom(X52110).
goal(oplayer, 100, X52110) :- line(o, X52110), tdom(X52110).
goal(oplayer, 50, X52122) :- not line(x, X52122), not line(o, X52122), not open(X52122), tdom(X52122).
goal(oplayer, 0, X52110) :- line(x, X52110), tdom(X52110).
terminal(X52107) :- line(x, X52107), tdom(X52107).
terminal(X52107) :- line(o, X52107), tdom(X52107).
terminal(X52107) :- not open(X52107), tdom(X52107).
succ(1, 2).
succ(2, 3).
line(X52103, X52139) :- true(cell(X52109, X52110, X52103), X52139), true(cell(X52109, X52118, X52103), X52139), true(cell(X52109, X52126, X52103), X52139), succ(X52110, X52118), succ(X52118, X52126), domdomain(9, X52118), domdomain(10, X52126), domdomain(9, X52110), domdomain(10, X52118), domdomain(2, X52126), domdomain(2, X52118), domdomain(2, X52109), domdomain(2, X52110), tdom(X52139), domdomain(1, X52103).
line(X52103, X52139) :- true(cell(X52109, X52110, X52103), X52139), true(cell(X52117, X52110, X52103), X52139), true(cell(X52125, X52110, X52103), X52139), succ(X52109, X52117), succ(X52117, X52125), domdomain(9, X52117), domdomain(10, X52125), domdomain(9, X52109), domdomain(10, X52117), domdomain(2, X52125), domdomain(2, X52117), domdomain(2, X52109), domdomain(2, X52110), tdom(X52139), domdomain(1, X52103).
line(X52103, X52149) :- true(cell(X52109, X52110, X52103), X52149), true(cell(X52117, X52118, X52103), X52149), true(cell(X52125, X52126, X52103), X52149), succ(X52109, X52117), succ(X52117, X52125), succ(X52110, X52118), succ(X52118, X52126), domdomain(9, X52118), domdomain(10, X52126), domdomain(9, X52110), domdomain(10, X52118), domdomain(9, X52117), domdomain(10, X52125), domdomain(9, X52109), domdomain(10, X52117), domdomain(2, X52125), domdomain(2, X52126), domdomain(2, X52117), domdomain(2, X52118), domdomain(2, X52109), domdomain(2, X52110), tdom(X52149), domdomain(1, X52103).
line(X52102, X52148) :- true(cell(X52108, X52109, X52102), X52148), true(cell(X52116, X52117, X52102), X52148), true(cell(X52124, X52125, X52102), X52148), succ(X52124, X52116), succ(X52116, X52108), succ(X52109, X52117), succ(X52117, X52125), domdomain(9, X52117), domdomain(10, X52125), domdomain(9, X52109), domdomain(10, X52117), domdomain(9, X52116), domdomain(10, X52108), domdomain(9, X52124), domdomain(10, X52116), domdomain(2, X52124), domdomain(2, X52125), domdomain(2, X52116), domdomain(2, X52117), domdomain(2, X52108), domdomain(2, X52109), tdom(X52148), domdomain(1, X52102).
domdomain(1, o).
domdomain(1, x).
domdomain(2, 1).
domdomain(2, 2).
domdomain(2, 3).
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
