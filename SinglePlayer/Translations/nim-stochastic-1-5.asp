mtdom(1..20).
role(xplayer).
role(oplayer).
role(random).
base(round(0)).
base(round(X37388)) :- succ(X37392, X37388), domdomain(13, X37392), domdomain(14, X37388), domdomain(8, X37388).
base(heap(X37388, 0)) :- pile(X37388), domdomain(1, X37388), domdomain(7, X37388).
base(heap(X37388, X37389)) :- pile(X37388), succ(X37388, X37389), domdomain(13, X37388), domdomain(14, X37389), domdomain(1, X37388), domdomain(7, X37388), domdomain(8, X37389).
base(control(xplayer)).
base(control(oplayer)).
base(phase(random)).
base(phase(player)).
input(xplayer, reduce(X37389, 1)) :- pile(X37389), domdomain(1, X37389), domdomain(7, X37389).
input(xplayer, reduce(X37389, 2)) :- pile(X37389), domdomain(1, X37389), domdomain(7, X37389).
input(oplayer, reduce(X37389, 1)) :- pile(X37389), domdomain(1, X37389), domdomain(7, X37389).
input(oplayer, reduce(X37389, 2)) :- pile(X37389), domdomain(1, X37389), domdomain(7, X37389).
input(random, add(X37389, 1)) :- pile(X37389), domdomain(1, X37389).
input(X37386, noop) :- role(X37386), domdomain(5, X37386).
true(heap(X37388, X37389), 1) :- height(X37388, X37389), domdomain(1, X37388), domdomain(9, X37389), domdomain(7, X37388), domdomain(8, X37389).
true(control(xplayer), 1).
true(phase(player), 1).
true(round(0), 1).
legal(xplayer, noop, X37395) :- true(control(oplayer), X37395), tdom(X37395).
legal(xplayer, noop, X37395) :- true(phase(random), X37395), tdom(X37395).
legal(oplayer, noop, X37395) :- true(control(xplayer), X37395), tdom(X37395).
legal(oplayer, noop, X37395) :- true(phase(random), X37395), tdom(X37395).
legal(X37386, noop, X37404) :- true(control(X37393), X37404), role(X37386), X37393 != X37386, domdomain(4, X37393), tdom(X37404), domdomain(5, X37386).
legal(random, add(X37389, 1), X37398) :- true(phase(random), X37398), tdom(X37398), domdomain(1, X37389).
legal(random, noop, X37389) :- tdom(X37389).
legal(X37386, reduce(X37389, 1), X37416) :- true(heap(X37389, X37397), X37416), true(control(X37386), X37416), true(phase(player), X37416), small(0, X37397), domdomain(14, X37397), domdomain(4, X37386), domdomain(8, X37397), tdom(X37416), domdomain(5, X37386), domdomain(7, X37389).
legal(X37386, reduce(X37389, 2), X37416) :- true(heap(X37389, X37397), X37416), true(control(X37386), X37416), true(phase(player), X37416), small(1, X37397), domdomain(14, X37397), domdomain(4, X37386), domdomain(8, X37397), tdom(X37416), domdomain(5, X37386), domdomain(7, X37389).
true(round(X37388), X37402 + 1) :- true(round(X37388), X37402), true(phase(player), X37402), mtdom(X37402), domdomain(8, X37388).
true(round(X37388), X37413 + 1) :- true(round(X37394), X37413), true(phase(random), X37413), true(control(oplayer), X37413), succ(X37394, X37388), domdomain(13, X37394), domdomain(14, X37388), domdomain(8, X37394), mtdom(X37413), domdomain(8, X37388).
true(phase(player), X37396 + 1) :- true(phase(random), X37396), mtdom(X37396).
true(phase(random), X37396 + 1) :- true(phase(player), X37396), mtdom(X37396).
true(control(X37388), X37402 + 1) :- true(control(X37388), X37402), true(phase(player), X37402), mtdom(X37402), domdomain(4, X37388).
true(control(X37388), X37407 + 1) :- true(control(X37394), X37407), true(phase(random), X37407), nextXplayer(X37394, X37388), domdomain(4, X37394), mtdom(X37407), domdomain(4, X37388).
true(heap(X37388, X37389), X37411 + 1) :- does(X37393, reduce(X37388, 1), X37411), true(heap(X37388, X37404), X37411), succ(X37389, X37404), domdomain(13, X37389), domdomain(14, X37404), domdomain(8, X37404), domdomain(5, X37393), mtdom(X37411), domdomain(7, X37388), domdomain(8, X37389).
true(heap(X37388, X37389), X37416 + 1) :- does(X37393, reduce(X37388, 2), X37416), true(heap(X37388, X37404), X37416), succ(X37389, X37388), succ(X37388, X37404), domdomain(13, X37388), domdomain(14, X37404), domdomain(13, X37389), domdomain(14, X37388), domdomain(8, X37404), domdomain(5, X37393), mtdom(X37416), domdomain(7, X37388), domdomain(8, X37389).
true(heap(X37388, X37389), X37411 + 1) :- does(random, add(X37388, 1), X37411), true(heap(X37388, X37404), X37411), succ(X37404, X37389), domdomain(13, X37404), domdomain(14, X37389), domdomain(8, X37404), domdomain(1, X37388), mtdom(X37411), domdomain(7, X37388), domdomain(8, X37389).
true(heap(X37388, X37389), X37411 + 1) :- does(random, add(X37396, 1), X37411), true(heap(X37388, X37389), X37411), X37388 != X37396, domdomain(1, X37396), mtdom(X37411), domdomain(7, X37388), domdomain(8, X37389).
true(heap(X37388, X37389), X37409 + 1) :- does(random, noop, X37409), true(phase(random), X37409), true(heap(X37388, X37389), X37409), mtdom(X37409), domdomain(7, X37388), domdomain(8, X37389).
true(heap(X37388, X37389), X37411 + 1) :- does(X37393, reduce(X37396, X37397), X37411), true(heap(X37388, X37389), X37411), X37388 != X37396, domdomain(5, X37393), domdomain(7, X37396), domdomain(12, X37397), mtdom(X37411), domdomain(7, X37388), domdomain(8, X37389).
open(X37398) :- true(heap(X37390, X37391), X37398), small(0, X37391), domdomain(14, X37391), domdomain(7, X37390), domdomain(8, X37391), tdom(X37398).
terminal(X37390) :- not open(X37390), tdom(X37390).
goal(X37386, 0, X37395) :- true(control(X37386), X37395), domdomain(4, X37386), tdom(X37395), domdomain(5, X37386).
goal(X37386, 100, X37400) :- true(control(X37393), X37400), nextXplayer(X37386, X37393), domdomain(4, X37386), domdomain(4, X37393), tdom(X37400), domdomain(5, X37386).
nextXplayer(xplayer, oplayer).
nextXplayer(oplayer, xplayer).
pile(a).
terminal(X37392) :- true(round(5), X37392), tdom(X37392).
goal(X37386, 0, X37395) :- open(X37395), role(X37386), tdom(X37395), domdomain(5, X37386).
height(a, 5).
small(X37386, X37387) :- succ(X37386, X37392), small(X37392, X37387), domdomain(13, X37392), domdomain(14, X37392), domdomain(13, X37386), domdomain(14, X37387).
small(X37386, X37387) :- succ(X37386, X37387), domdomain(13, X37386), domdomain(14, X37387).
succ(0, 1).
succ(1, 2).
succ(2, 3).
succ(3, 4).
succ(4, 5).
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
domdomain(7, 3).
domdomain(7, 4).
domdomain(7, 5).
domdomain(7, a).
domdomain(8, 0).
domdomain(8, 1).
domdomain(8, 2).
domdomain(8, 3).
domdomain(8, 4).
domdomain(8, 5).
domdomain(9, 5).
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
domdomain(13, 3).
domdomain(13, 4).
domdomain(14, 1).
domdomain(14, 2).
domdomain(14, 3).
domdomain(14, 4).
domdomain(14, 5).
