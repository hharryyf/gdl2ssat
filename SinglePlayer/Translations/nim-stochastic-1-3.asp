mtdom(1..12).
role(xplayer).
role(oplayer).
role(random).
base(round(0)).
base(round(X36558)) :- succ(X36562, X36558), domdomain(13, X36562), domdomain(14, X36558), domdomain(8, X36558).
base(heap(X36558, 0)) :- pile(X36558), domdomain(1, X36558), domdomain(7, X36558).
base(heap(X36558, X36559)) :- pile(X36558), succ(X36558, X36559), domdomain(13, X36558), domdomain(14, X36559), domdomain(1, X36558), domdomain(7, X36558), domdomain(8, X36559).
base(control(xplayer)).
base(control(oplayer)).
base(phase(random)).
base(phase(player)).
input(xplayer, reduce(X36559, 1)) :- pile(X36559), domdomain(1, X36559), domdomain(7, X36559).
input(xplayer, reduce(X36559, 2)) :- pile(X36559), domdomain(1, X36559), domdomain(7, X36559).
input(oplayer, reduce(X36559, 1)) :- pile(X36559), domdomain(1, X36559), domdomain(7, X36559).
input(oplayer, reduce(X36559, 2)) :- pile(X36559), domdomain(1, X36559), domdomain(7, X36559).
input(random, add(X36559, 1)) :- pile(X36559), domdomain(1, X36559).
input(X36556, noop) :- role(X36556), domdomain(5, X36556).
true(heap(X36558, X36559), 1) :- height(X36558, X36559), domdomain(1, X36558), domdomain(9, X36559), domdomain(7, X36558), domdomain(8, X36559).
true(control(xplayer), 1).
true(phase(player), 1).
true(round(0), 1).
legal(xplayer, noop, X36565) :- true(control(oplayer), X36565), tdom(X36565).
legal(xplayer, noop, X36565) :- true(phase(random), X36565), tdom(X36565).
legal(oplayer, noop, X36565) :- true(control(xplayer), X36565), tdom(X36565).
legal(oplayer, noop, X36565) :- true(phase(random), X36565), tdom(X36565).
legal(X36556, noop, X36574) :- true(control(X36563), X36574), role(X36556), X36563 != X36556, domdomain(4, X36563), tdom(X36574), domdomain(5, X36556).
legal(random, add(X36559, 1), X36568) :- true(phase(random), X36568), tdom(X36568), domdomain(1, X36559).
legal(random, noop, X36559) :- tdom(X36559).
legal(X36556, reduce(X36559, 1), X36586) :- true(heap(X36559, X36567), X36586), true(control(X36556), X36586), true(phase(player), X36586), small(0, X36567), domdomain(14, X36567), domdomain(4, X36556), domdomain(8, X36567), tdom(X36586), domdomain(5, X36556), domdomain(7, X36559).
legal(X36556, reduce(X36559, 2), X36586) :- true(heap(X36559, X36567), X36586), true(control(X36556), X36586), true(phase(player), X36586), small(1, X36567), domdomain(14, X36567), domdomain(4, X36556), domdomain(8, X36567), tdom(X36586), domdomain(5, X36556), domdomain(7, X36559).
true(round(X36558), X36572 + 1) :- true(round(X36558), X36572), true(phase(player), X36572), mtdom(X36572), domdomain(8, X36558).
true(round(X36558), X36583 + 1) :- true(round(X36564), X36583), true(phase(random), X36583), true(control(oplayer), X36583), succ(X36564, X36558), domdomain(13, X36564), domdomain(14, X36558), domdomain(8, X36564), mtdom(X36583), domdomain(8, X36558).
true(phase(player), X36566 + 1) :- true(phase(random), X36566), mtdom(X36566).
true(phase(random), X36566 + 1) :- true(phase(player), X36566), mtdom(X36566).
true(control(X36558), X36572 + 1) :- true(control(X36558), X36572), true(phase(player), X36572), mtdom(X36572), domdomain(4, X36558).
true(control(X36558), X36577 + 1) :- true(control(X36564), X36577), true(phase(random), X36577), nextXplayer(X36564, X36558), domdomain(4, X36564), mtdom(X36577), domdomain(4, X36558).
true(heap(X36558, X36559), X36581 + 1) :- does(X36563, reduce(X36558, 1), X36581), true(heap(X36558, X36574), X36581), succ(X36559, X36574), domdomain(13, X36559), domdomain(14, X36574), domdomain(8, X36574), domdomain(5, X36563), mtdom(X36581), domdomain(7, X36558), domdomain(8, X36559).
true(heap(X36558, X36559), X36586 + 1) :- does(X36563, reduce(X36558, 2), X36586), true(heap(X36558, X36574), X36586), succ(X36559, X36579), succ(X36579, X36574), domdomain(13, X36579), domdomain(14, X36574), domdomain(13, X36559), domdomain(14, X36579), domdomain(8, X36574), domdomain(5, X36563), mtdom(X36586), domdomain(7, X36558), domdomain(8, X36559).
true(heap(X36558, X36559), X36581 + 1) :- does(random, add(X36558, 1), X36581), true(heap(X36558, X36574), X36581), succ(X36574, X36559), domdomain(13, X36574), domdomain(14, X36559), domdomain(8, X36574), domdomain(1, X36558), mtdom(X36581), domdomain(7, X36558), domdomain(8, X36559).
true(heap(X36558, X36559), X36581 + 1) :- does(random, add(X36566, 1), X36581), true(heap(X36558, X36559), X36581), X36558 != X36566, domdomain(1, X36566), mtdom(X36581), domdomain(7, X36558), domdomain(8, X36559).
true(heap(X36558, X36559), X36579 + 1) :- does(random, noop, X36579), true(phase(random), X36579), true(heap(X36558, X36559), X36579), mtdom(X36579), domdomain(7, X36558), domdomain(8, X36559).
true(heap(X36558, X36559), X36581 + 1) :- does(X36563, reduce(X36566, X36567), X36581), true(heap(X36558, X36559), X36581), X36558 != X36566, domdomain(5, X36563), domdomain(7, X36566), domdomain(12, X36567), mtdom(X36581), domdomain(7, X36558), domdomain(8, X36559).
open(X36568) :- true(heap(X36560, X36561), X36568), small(0, X36561), domdomain(14, X36561), domdomain(7, X36560), domdomain(8, X36561), tdom(X36568).
terminal(X36560) :- not open(X36560), tdom(X36560).
goal(X36556, 100, X36565) :- true(control(X36556), X36565), tdom(X36565), domdomain(4, X36556).
goal(X36556, 0, X36570) :- true(control(X36563), X36570), nextXplayer(X36556, X36563), domdomain(4, X36563), tdom(X36570), domdomain(4, X36556).
nextXplayer(xplayer, oplayer).
nextXplayer(oplayer, xplayer).
pile(a).
terminal(X36562) :- true(round(3), X36562), tdom(X36562).
height(a, 3).
small(X36556, X36557) :- succ(X36556, X36562), small(X36562, X36557), domdomain(13, X36562), domdomain(14, X36562), domdomain(13, X36556), domdomain(14, X36557).
small(X36556, X36557) :- succ(X36556, X36557), domdomain(13, X36556), domdomain(14, X36557).
succ(0, 1).
succ(1, 2).
succ(2, 3).
domdomain(1, a).
domdomain(2, 1).
domdomain(3, control).
domdomain(3, heap).
domdomain(3, phase).
domdomain(3, round).
domdomain(4, oplayer).
domdomain(4, xplayer).
domdomain(5, oplayer).
domdomain(5, random).
domdomain(5, xplayer).
domdomain(6, 0).
domdomain(6, 100).
domdomain(7, 0).
domdomain(7, 1).
domdomain(7, 2).
domdomain(7, a).
domdomain(8, 0).
domdomain(8, 1).
domdomain(8, 2).
domdomain(8, 3).
domdomain(9, 3).
domdomain(10, add).
domdomain(10, noop).
domdomain(10, reduce).
domdomain(11, player).
domdomain(11, random).
domdomain(12, 1).
domdomain(12, 2).
domdomain(13, 0).
domdomain(13, 1).
domdomain(13, 2).
domdomain(14, 1).
domdomain(14, 2).
domdomain(14, 3).
