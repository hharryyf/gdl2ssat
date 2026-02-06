mtdom(1..24).
role(xplayer).
role(oplayer).
role(random).
base(round(0)).
base(round(X37101)) :- succ(X37105, X37101), domdomain(13, X37105), domdomain(14, X37101), domdomain(8, X37101).
base(heap(X37101, 0)) :- pile(X37101), domdomain(1, X37101), domdomain(7, X37101).
base(heap(X37101, X37102)) :- pile(X37101), succ(X37101, X37102), domdomain(13, X37101), domdomain(14, X37102), domdomain(1, X37101), domdomain(7, X37101), domdomain(8, X37102).
base(control(xplayer)).
base(control(oplayer)).
base(phase(random)).
base(phase(player)).
input(xplayer, reduce(X37102, 1)) :- pile(X37102), domdomain(1, X37102), domdomain(7, X37102).
input(xplayer, reduce(X37102, 2)) :- pile(X37102), domdomain(1, X37102), domdomain(7, X37102).
input(oplayer, reduce(X37102, 1)) :- pile(X37102), domdomain(1, X37102), domdomain(7, X37102).
input(oplayer, reduce(X37102, 2)) :- pile(X37102), domdomain(1, X37102), domdomain(7, X37102).
input(random, add(X37102, 1)) :- pile(X37102), domdomain(1, X37102).
input(X37099, noop) :- role(X37099), domdomain(5, X37099).
true(heap(X37101, X37102), 1) :- height(X37101, X37102), domdomain(1, X37101), domdomain(9, X37102), domdomain(7, X37101), domdomain(8, X37102).
true(control(xplayer), 1).
true(phase(player), 1).
true(round(0), 1).
legal(xplayer, noop, X37108) :- true(control(oplayer), X37108), tdom(X37108).
legal(xplayer, noop, X37108) :- true(phase(random), X37108), tdom(X37108).
legal(oplayer, noop, X37108) :- true(control(xplayer), X37108), tdom(X37108).
legal(oplayer, noop, X37108) :- true(phase(random), X37108), tdom(X37108).
legal(X37099, noop, X37117) :- true(control(X37106), X37117), role(X37099), X37106 != X37099, domdomain(4, X37106), tdom(X37117), domdomain(5, X37099).
legal(random, add(X37102, 1), X37111) :- true(phase(random), X37111), tdom(X37111), domdomain(1, X37102).
legal(random, noop, X37102) :- tdom(X37102).
legal(X37099, reduce(X37102, 1), X37129) :- true(heap(X37102, X37110), X37129), true(control(X37099), X37129), true(phase(player), X37129), small(0, X37110), domdomain(14, X37110), domdomain(4, X37099), domdomain(8, X37110), tdom(X37129), domdomain(5, X37099), domdomain(7, X37102).
legal(X37099, reduce(X37102, 2), X37129) :- true(heap(X37102, X37110), X37129), true(control(X37099), X37129), true(phase(player), X37129), small(1, X37110), domdomain(14, X37110), domdomain(4, X37099), domdomain(8, X37110), tdom(X37129), domdomain(5, X37099), domdomain(7, X37102).
true(round(X37101), X37115 + 1) :- true(round(X37101), X37115), true(phase(player), X37115), mtdom(X37115), domdomain(8, X37101).
true(round(X37101), X37126 + 1) :- true(round(X37107), X37126), true(phase(random), X37126), true(control(oplayer), X37126), succ(X37107, X37101), domdomain(13, X37107), domdomain(14, X37101), domdomain(8, X37107), mtdom(X37126), domdomain(8, X37101).
true(phase(player), X37109 + 1) :- true(phase(random), X37109), mtdom(X37109).
true(phase(random), X37109 + 1) :- true(phase(player), X37109), mtdom(X37109).
true(control(X37101), X37115 + 1) :- true(control(X37101), X37115), true(phase(player), X37115), mtdom(X37115), domdomain(4, X37101).
true(control(X37101), X37120 + 1) :- true(control(X37107), X37120), true(phase(random), X37120), nextXplayer(X37107, X37101), domdomain(4, X37107), mtdom(X37120), domdomain(4, X37101).
true(heap(X37101, X37102), X37124 + 1) :- does(X37106, reduce(X37101, 1), X37124), true(heap(X37101, X37117), X37124), succ(X37102, X37117), domdomain(13, X37102), domdomain(14, X37117), domdomain(8, X37117), domdomain(5, X37106), mtdom(X37124), domdomain(7, X37101), domdomain(8, X37102).
true(heap(X37101, X37102), X37129 + 1) :- does(X37106, reduce(X37101, 2), X37129), true(heap(X37101, X37117), X37129), succ(X37102, X37122), succ(X37122, X37117), domdomain(13, X37122), domdomain(14, X37117), domdomain(13, X37102), domdomain(14, X37122), domdomain(8, X37117), domdomain(5, X37106), mtdom(X37129), domdomain(7, X37101), domdomain(8, X37102).
true(heap(X37101, X37102), X37124 + 1) :- does(random, add(X37101, 1), X37124), true(heap(X37101, X37117), X37124), succ(X37117, X37102), domdomain(13, X37117), domdomain(14, X37102), domdomain(8, X37117), domdomain(1, X37101), mtdom(X37124), domdomain(7, X37101), domdomain(8, X37102).
true(heap(X37101, X37102), X37124 + 1) :- does(random, add(X37109, 1), X37124), true(heap(X37101, X37102), X37124), X37101 != X37109, domdomain(1, X37109), mtdom(X37124), domdomain(7, X37101), domdomain(8, X37102).
true(heap(X37101, X37102), X37122 + 1) :- does(random, noop, X37122), true(phase(random), X37122), true(heap(X37101, X37102), X37122), mtdom(X37122), domdomain(7, X37101), domdomain(8, X37102).
true(heap(X37101, X37102), X37124 + 1) :- does(X37106, reduce(X37109, X37110), X37124), true(heap(X37101, X37102), X37124), X37101 != X37109, domdomain(5, X37106), domdomain(7, X37109), domdomain(12, X37110), mtdom(X37124), domdomain(7, X37101), domdomain(8, X37102).
open(X37111) :- true(heap(X37103, X37104), X37111), small(0, X37104), domdomain(14, X37104), domdomain(7, X37103), domdomain(8, X37104), tdom(X37111).
terminal(X37103) :- not open(X37103), tdom(X37103).
goal(X37099, 100, X37108) :- true(control(X37099), X37108), tdom(X37108), domdomain(4, X37099).
goal(X37099, 0, X37113) :- true(control(X37106), X37113), nextXplayer(X37099, X37106), domdomain(4, X37106), tdom(X37113), domdomain(4, X37099).
nextXplayer(xplayer, oplayer).
nextXplayer(oplayer, xplayer).
pile(a).
terminal(X37105) :- true(round(6), X37105), tdom(X37105).
height(a, 6).
small(X37099, X37100) :- succ(X37099, X37105), small(X37105, X37100), domdomain(13, X37105), domdomain(14, X37105), domdomain(13, X37099), domdomain(14, X37100).
small(X37099, X37100) :- succ(X37099, X37100), domdomain(13, X37099), domdomain(14, X37100).
succ(0, 1).
succ(1, 2).
succ(2, 3).
succ(3, 4).
succ(4, 5).
succ(5, 6).
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
domdomain(8, 6).
domdomain(9, 6).
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
domdomain(13, 5).
domdomain(14, 1).
domdomain(14, 2).
domdomain(14, 3).
domdomain(14, 4).
domdomain(14, 5).
domdomain(14, 6).
