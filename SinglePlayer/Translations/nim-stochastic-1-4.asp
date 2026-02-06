mtdom(1..16).
role(xplayer).
role(oplayer).
role(random).
base(round(0)).
base(round(X36721)) :- succ(X36725, X36721), domdomain(13, X36725), domdomain(14, X36721), domdomain(8, X36721).
base(heap(X36721, 0)) :- pile(X36721), domdomain(1, X36721), domdomain(7, X36721).
base(heap(X36721, X36722)) :- pile(X36721), succ(X36721, X36722), domdomain(13, X36721), domdomain(14, X36722), domdomain(1, X36721), domdomain(7, X36721), domdomain(8, X36722).
base(control(xplayer)).
base(control(oplayer)).
base(phase(random)).
base(phase(player)).
input(xplayer, reduce(X36722, 1)) :- pile(X36722), domdomain(1, X36722), domdomain(7, X36722).
input(xplayer, reduce(X36722, 2)) :- pile(X36722), domdomain(1, X36722), domdomain(7, X36722).
input(oplayer, reduce(X36722, 1)) :- pile(X36722), domdomain(1, X36722), domdomain(7, X36722).
input(oplayer, reduce(X36722, 2)) :- pile(X36722), domdomain(1, X36722), domdomain(7, X36722).
input(random, add(X36722, 1)) :- pile(X36722), domdomain(1, X36722).
input(X36719, noop) :- role(X36719), domdomain(5, X36719).
true(heap(X36721, X36722), 1) :- height(X36721, X36722), domdomain(1, X36721), domdomain(9, X36722), domdomain(7, X36721), domdomain(8, X36722).
true(control(xplayer), 1).
true(phase(player), 1).
true(round(0), 1).
legal(xplayer, noop, X36728) :- true(control(oplayer), X36728), tdom(X36728).
legal(xplayer, noop, X36728) :- true(phase(random), X36728), tdom(X36728).
legal(oplayer, noop, X36728) :- true(control(xplayer), X36728), tdom(X36728).
legal(oplayer, noop, X36728) :- true(phase(random), X36728), tdom(X36728).
legal(X36719, noop, X36737) :- true(control(X36726), X36737), role(X36719), X36726 != X36719, domdomain(4, X36726), tdom(X36737), domdomain(5, X36719).
legal(random, add(X36722, 1), X36731) :- true(phase(random), X36731), tdom(X36731), domdomain(1, X36722).
legal(random, noop, X36722) :- tdom(X36722).
legal(X36719, reduce(X36722, 1), X36749) :- true(heap(X36722, X36730), X36749), true(control(X36719), X36749), true(phase(player), X36749), small(0, X36730), domdomain(14, X36730), domdomain(4, X36719), domdomain(8, X36730), tdom(X36749), domdomain(5, X36719), domdomain(7, X36722).
legal(X36719, reduce(X36722, 2), X36749) :- true(heap(X36722, X36730), X36749), true(control(X36719), X36749), true(phase(player), X36749), small(1, X36730), domdomain(14, X36730), domdomain(4, X36719), domdomain(8, X36730), tdom(X36749), domdomain(5, X36719), domdomain(7, X36722).
true(round(X36721), X36735 + 1) :- true(round(X36721), X36735), true(phase(player), X36735), mtdom(X36735), domdomain(8, X36721).
true(round(X36721), X36746 + 1) :- true(round(X36727), X36746), true(phase(random), X36746), true(control(oplayer), X36746), succ(X36727, X36721), domdomain(13, X36727), domdomain(14, X36721), domdomain(8, X36727), mtdom(X36746), domdomain(8, X36721).
true(phase(player), X36729 + 1) :- true(phase(random), X36729), mtdom(X36729).
true(phase(random), X36729 + 1) :- true(phase(player), X36729), mtdom(X36729).
true(control(X36721), X36735 + 1) :- true(control(X36721), X36735), true(phase(player), X36735), mtdom(X36735), domdomain(4, X36721).
true(control(X36721), X36740 + 1) :- true(control(X36727), X36740), true(phase(random), X36740), nextXplayer(X36727, X36721), domdomain(4, X36727), mtdom(X36740), domdomain(4, X36721).
true(heap(X36721, X36722), X36744 + 1) :- does(X36726, reduce(X36721, 1), X36744), true(heap(X36721, X36737), X36744), succ(X36722, X36737), domdomain(13, X36722), domdomain(14, X36737), domdomain(8, X36737), domdomain(5, X36726), mtdom(X36744), domdomain(7, X36721), domdomain(8, X36722).
true(heap(X36721, X36722), X36749 + 1) :- does(X36726, reduce(X36721, 2), X36749), true(heap(X36721, X36737), X36749), succ(X36722, X36742), succ(X36742, X36737), domdomain(13, X36742), domdomain(14, X36737), domdomain(13, X36722), domdomain(14, X36742), domdomain(8, X36737), domdomain(5, X36726), mtdom(X36749), domdomain(7, X36721), domdomain(8, X36722).
true(heap(X36721, X36722), X36744 + 1) :- does(random, add(X36721, 1), X36744), true(heap(X36721, X36737), X36744), succ(X36737, X36722), domdomain(13, X36737), domdomain(14, X36722), domdomain(8, X36737), domdomain(1, X36721), mtdom(X36744), domdomain(7, X36721), domdomain(8, X36722).
true(heap(X36721, X36722), X36744 + 1) :- does(random, add(X36729, 1), X36744), true(heap(X36721, X36722), X36744), X36721 != X36729, domdomain(1, X36729), mtdom(X36744), domdomain(7, X36721), domdomain(8, X36722).
true(heap(X36721, X36722), X36742 + 1) :- does(random, noop, X36742), true(phase(random), X36742), true(heap(X36721, X36722), X36742), mtdom(X36742), domdomain(7, X36721), domdomain(8, X36722).
true(heap(X36721, X36722), X36744 + 1) :- does(X36726, reduce(X36729, X36730), X36744), true(heap(X36721, X36722), X36744), X36721 != X36729, domdomain(5, X36726), domdomain(7, X36729), domdomain(12, X36730), mtdom(X36744), domdomain(7, X36721), domdomain(8, X36722).
open(X36731) :- true(heap(X36723, X36724), X36731), small(0, X36724), domdomain(14, X36724), domdomain(7, X36723), domdomain(8, X36724), tdom(X36731).
terminal(X36723) :- not open(X36723), tdom(X36723).
goal(X36719, 100, X36728) :- true(control(X36719), X36728), tdom(X36728), domdomain(4, X36719).
goal(X36719, 0, X36733) :- true(control(X36726), X36733), nextXplayer(X36719, X36726), domdomain(4, X36726), tdom(X36733), domdomain(4, X36719).
nextXplayer(xplayer, oplayer).
nextXplayer(oplayer, xplayer).
pile(a).
terminal(X36725) :- true(round(4), X36725), tdom(X36725).
height(a, 4).
small(X36719, X36720) :- succ(X36719, X36725), small(X36725, X36720), domdomain(13, X36725), domdomain(14, X36725), domdomain(13, X36719), domdomain(14, X36720).
small(X36719, X36720) :- succ(X36719, X36720), domdomain(13, X36719), domdomain(14, X36720).
succ(0, 1).
succ(1, 2).
succ(2, 3).
succ(3, 4).
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
domdomain(7, a).
domdomain(8, 0).
domdomain(8, 1).
domdomain(8, 2).
domdomain(8, 3).
domdomain(8, 4).
domdomain(9, 4).
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
domdomain(14, 1).
domdomain(14, 2).
domdomain(14, 3).
domdomain(14, 4).
