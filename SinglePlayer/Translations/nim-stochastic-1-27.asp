mtdom(1..108).
role(xplayer).
role(oplayer).
role(random).
base(round(0)).
base(round(X41478)) :- succ(X41482, X41478), domdomain(13, X41482), domdomain(14, X41478), domdomain(8, X41478).
base(heap(X41478, 0)) :- pile(X41478), domdomain(1, X41478), domdomain(7, X41478).
base(heap(X41478, X41479)) :- pile(X41478), succ(X41478, X41479), domdomain(13, X41478), domdomain(14, X41479), domdomain(1, X41478), domdomain(7, X41478), domdomain(8, X41479).
base(control(xplayer)).
base(control(oplayer)).
base(phase(random)).
base(phase(player)).
input(xplayer, reduce(X41479, 1)) :- pile(X41479), domdomain(1, X41479), domdomain(7, X41479).
input(xplayer, reduce(X41479, 2)) :- pile(X41479), domdomain(1, X41479), domdomain(7, X41479).
input(oplayer, reduce(X41479, 1)) :- pile(X41479), domdomain(1, X41479), domdomain(7, X41479).
input(oplayer, reduce(X41479, 2)) :- pile(X41479), domdomain(1, X41479), domdomain(7, X41479).
input(random, add(X41479, 1)) :- pile(X41479), domdomain(1, X41479).
input(X41476, noop) :- role(X41476), domdomain(5, X41476).
true(heap(X41478, X41479), 1) :- height(X41478, X41479), domdomain(1, X41478), domdomain(9, X41479), domdomain(7, X41478), domdomain(8, X41479).
true(control(xplayer), 1).
true(phase(player), 1).
true(round(0), 1).
legal(xplayer, noop, X41485) :- true(control(oplayer), X41485), tdom(X41485).
legal(xplayer, noop, X41485) :- true(phase(random), X41485), tdom(X41485).
legal(oplayer, noop, X41485) :- true(control(xplayer), X41485), tdom(X41485).
legal(oplayer, noop, X41485) :- true(phase(random), X41485), tdom(X41485).
legal(X41476, noop, X41494) :- true(control(X41483), X41494), role(X41476), X41483 != X41476, domdomain(4, X41483), tdom(X41494), domdomain(5, X41476).
legal(random, add(X41479, 1), X41488) :- true(phase(random), X41488), tdom(X41488), domdomain(1, X41479).
legal(random, noop, X41479) :- tdom(X41479).
legal(X41476, reduce(X41479, 1), X41506) :- true(heap(X41479, X41487), X41506), true(control(X41476), X41506), true(phase(player), X41506), small(0, X41487), domdomain(14, X41487), domdomain(4, X41476), domdomain(8, X41487), tdom(X41506), domdomain(5, X41476), domdomain(7, X41479).
legal(X41476, reduce(X41479, 2), X41506) :- true(heap(X41479, X41487), X41506), true(control(X41476), X41506), true(phase(player), X41506), small(1, X41487), domdomain(14, X41487), domdomain(4, X41476), domdomain(8, X41487), tdom(X41506), domdomain(5, X41476), domdomain(7, X41479).
true(round(X41478), X41492 + 1) :- true(round(X41478), X41492), true(phase(player), X41492), mtdom(X41492), domdomain(8, X41478).
true(round(X41478), X41503 + 1) :- true(round(X41484), X41503), true(phase(random), X41503), true(control(oplayer), X41503), succ(X41484, X41478), domdomain(13, X41484), domdomain(14, X41478), domdomain(8, X41484), mtdom(X41503), domdomain(8, X41478).
true(phase(player), X41486 + 1) :- true(phase(random), X41486), mtdom(X41486).
true(phase(random), X41486 + 1) :- true(phase(player), X41486), mtdom(X41486).
true(control(X41478), X41492 + 1) :- true(control(X41478), X41492), true(phase(player), X41492), mtdom(X41492), domdomain(4, X41478).
true(control(X41478), X41497 + 1) :- true(control(X41484), X41497), true(phase(random), X41497), nextXplayer(X41484, X41478), domdomain(4, X41484), mtdom(X41497), domdomain(4, X41478).
true(heap(X41478, X41479), X41501 + 1) :- does(X41483, reduce(X41478, 1), X41501), true(heap(X41478, X41494), X41501), succ(X41479, X41494), domdomain(13, X41479), domdomain(14, X41494), domdomain(8, X41494), domdomain(5, X41483), mtdom(X41501), domdomain(7, X41478), domdomain(8, X41479).
true(heap(X41478, X41479), X41506 + 1) :- does(X41483, reduce(X41478, 2), X41506), true(heap(X41478, X41494), X41506), succ(X41479, X41499), succ(X41499, X41494), domdomain(13, X41499), domdomain(14, X41494), domdomain(13, X41479), domdomain(14, X41499), domdomain(8, X41494), domdomain(5, X41483), mtdom(X41506), domdomain(7, X41478), domdomain(8, X41479).
true(heap(X41478, X41479), X41501 + 1) :- does(random, add(X41478, 1), X41501), true(heap(X41478, X41494), X41501), succ(X41494, X41479), domdomain(13, X41494), domdomain(14, X41479), domdomain(8, X41494), domdomain(1, X41478), mtdom(X41501), domdomain(7, X41478), domdomain(8, X41479).
true(heap(X41478, X41479), X41501 + 1) :- does(random, add(X41486, 1), X41501), true(heap(X41478, X41479), X41501), X41478 != X41486, domdomain(1, X41486), mtdom(X41501), domdomain(7, X41478), domdomain(8, X41479).
true(heap(X41478, X41479), X41499 + 1) :- does(random, noop, X41499), true(phase(random), X41499), true(heap(X41478, X41479), X41499), mtdom(X41499), domdomain(7, X41478), domdomain(8, X41479).
true(heap(X41478, X41479), X41501 + 1) :- does(X41483, reduce(X41486, X41487), X41501), true(heap(X41478, X41479), X41501), X41478 != X41486, domdomain(5, X41483), domdomain(7, X41486), domdomain(12, X41487), mtdom(X41501), domdomain(7, X41478), domdomain(8, X41479).
open(X41488) :- true(heap(X41480, X41481), X41488), small(0, X41481), domdomain(14, X41481), domdomain(7, X41480), domdomain(8, X41481), tdom(X41488).
terminal(X41480) :- not open(X41480), tdom(X41480).
goal(X41476, 100, X41485) :- true(control(X41476), X41485), tdom(X41485), domdomain(4, X41476).
goal(X41476, 0, X41490) :- true(control(X41483), X41490), nextXplayer(X41476, X41483), domdomain(4, X41483), tdom(X41490), domdomain(4, X41476).
nextXplayer(xplayer, oplayer).
nextXplayer(oplayer, xplayer).
pile(a).
terminal(X41482) :- true(round(27), X41482), tdom(X41482).
height(a, 27).
small(X41476, X41477) :- succ(X41476, X41482), small(X41482, X41477), domdomain(13, X41482), domdomain(14, X41482), domdomain(13, X41476), domdomain(14, X41477).
small(X41476, X41477) :- succ(X41476, X41477), domdomain(13, X41476), domdomain(14, X41477).
succ(0, 1).
succ(1, 2).
succ(2, 3).
succ(3, 4).
succ(4, 5).
succ(5, 6).
succ(6, 7).
succ(7, 8).
succ(8, 9).
succ(9, 10).
succ(10, 11).
succ(11, 12).
succ(12, 13).
succ(13, 14).
succ(14, 15).
succ(15, 16).
succ(16, 17).
succ(17, 18).
succ(18, 19).
succ(19, 20).
succ(20, 21).
succ(21, 22).
succ(22, 23).
succ(23, 24).
succ(24, 25).
succ(25, 26).
succ(26, 27).
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
domdomain(7, 6).
domdomain(7, 7).
domdomain(7, 8).
domdomain(7, 9).
domdomain(7, 10).
domdomain(7, 11).
domdomain(7, 12).
domdomain(7, 13).
domdomain(7, 14).
domdomain(7, 15).
domdomain(7, 16).
domdomain(7, 17).
domdomain(7, 18).
domdomain(7, 19).
domdomain(7, 20).
domdomain(7, 21).
domdomain(7, 22).
domdomain(7, 23).
domdomain(7, 24).
domdomain(7, 25).
domdomain(7, 26).
domdomain(7, a).
domdomain(8, 0).
domdomain(8, 1).
domdomain(8, 2).
domdomain(8, 3).
domdomain(8, 4).
domdomain(8, 5).
domdomain(8, 6).
domdomain(8, 7).
domdomain(8, 8).
domdomain(8, 9).
domdomain(8, 10).
domdomain(8, 11).
domdomain(8, 12).
domdomain(8, 13).
domdomain(8, 14).
domdomain(8, 15).
domdomain(8, 16).
domdomain(8, 17).
domdomain(8, 18).
domdomain(8, 19).
domdomain(8, 20).
domdomain(8, 21).
domdomain(8, 22).
domdomain(8, 23).
domdomain(8, 24).
domdomain(8, 25).
domdomain(8, 26).
domdomain(8, 27).
domdomain(9, 27).
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
domdomain(13, 6).
domdomain(13, 7).
domdomain(13, 8).
domdomain(13, 9).
domdomain(13, 10).
domdomain(13, 11).
domdomain(13, 12).
domdomain(13, 13).
domdomain(13, 14).
domdomain(13, 15).
domdomain(13, 16).
domdomain(13, 17).
domdomain(13, 18).
domdomain(13, 19).
domdomain(13, 20).
domdomain(13, 21).
domdomain(13, 22).
domdomain(13, 23).
domdomain(13, 24).
domdomain(13, 25).
domdomain(13, 26).
domdomain(14, 1).
domdomain(14, 2).
domdomain(14, 3).
domdomain(14, 4).
domdomain(14, 5).
domdomain(14, 6).
domdomain(14, 7).
domdomain(14, 8).
domdomain(14, 9).
domdomain(14, 10).
domdomain(14, 11).
domdomain(14, 12).
domdomain(14, 13).
domdomain(14, 14).
domdomain(14, 15).
domdomain(14, 16).
domdomain(14, 17).
domdomain(14, 18).
domdomain(14, 19).
domdomain(14, 20).
domdomain(14, 21).
domdomain(14, 22).
domdomain(14, 23).
domdomain(14, 24).
domdomain(14, 25).
domdomain(14, 26).
domdomain(14, 27).
