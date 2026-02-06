mtdom(1..120).
role(xplayer).
role(oplayer).
role(random).
base(round(0)).
base(round(X43274)) :- succ(X43278, X43274), domdomain(13, X43278), domdomain(14, X43274), domdomain(8, X43274).
base(heap(X43274, 0)) :- pile(X43274), domdomain(1, X43274), domdomain(7, X43274).
base(heap(X43274, X43275)) :- pile(X43274), succ(X43274, X43275), domdomain(13, X43274), domdomain(14, X43275), domdomain(1, X43274), domdomain(7, X43274), domdomain(8, X43275).
base(control(xplayer)).
base(control(oplayer)).
base(phase(random)).
base(phase(player)).
input(xplayer, reduce(X43275, 1)) :- pile(X43275), domdomain(1, X43275), domdomain(7, X43275).
input(xplayer, reduce(X43275, 2)) :- pile(X43275), domdomain(1, X43275), domdomain(7, X43275).
input(oplayer, reduce(X43275, 1)) :- pile(X43275), domdomain(1, X43275), domdomain(7, X43275).
input(oplayer, reduce(X43275, 2)) :- pile(X43275), domdomain(1, X43275), domdomain(7, X43275).
input(random, add(X43275, 1)) :- pile(X43275), domdomain(1, X43275).
input(X43272, noop) :- role(X43272), domdomain(5, X43272).
true(heap(X43274, X43275), 1) :- height(X43274, X43275), domdomain(1, X43274), domdomain(9, X43275), domdomain(7, X43274), domdomain(8, X43275).
true(control(xplayer), 1).
true(phase(player), 1).
true(round(0), 1).
legal(xplayer, noop, X43281) :- true(control(oplayer), X43281), tdom(X43281).
legal(xplayer, noop, X43281) :- true(phase(random), X43281), tdom(X43281).
legal(oplayer, noop, X43281) :- true(control(xplayer), X43281), tdom(X43281).
legal(oplayer, noop, X43281) :- true(phase(random), X43281), tdom(X43281).
legal(X43272, noop, X43290) :- true(control(X43279), X43290), role(X43272), X43279 != X43272, domdomain(4, X43279), tdom(X43290), domdomain(5, X43272).
legal(random, add(X43275, 1), X43284) :- true(phase(random), X43284), tdom(X43284), domdomain(1, X43275).
legal(random, noop, X43275) :- tdom(X43275).
legal(X43272, reduce(X43275, 1), X43302) :- true(heap(X43275, X43283), X43302), true(control(X43272), X43302), true(phase(player), X43302), small(0, X43283), domdomain(14, X43283), domdomain(4, X43272), domdomain(8, X43283), tdom(X43302), domdomain(5, X43272), domdomain(7, X43275).
legal(X43272, reduce(X43275, 2), X43302) :- true(heap(X43275, X43283), X43302), true(control(X43272), X43302), true(phase(player), X43302), small(1, X43283), domdomain(14, X43283), domdomain(4, X43272), domdomain(8, X43283), tdom(X43302), domdomain(5, X43272), domdomain(7, X43275).
true(round(X43274), X43288 + 1) :- true(round(X43274), X43288), true(phase(player), X43288), mtdom(X43288), domdomain(8, X43274).
true(round(X43274), X43294 + 1) :- true(round(X43274), X43294), true(phase(random), X43294), true(control(xplayer), X43294), mtdom(X43294), domdomain(8, X43274).
true(round(X43274), X43299 + 1) :- true(round(X43280), X43299), true(phase(random), X43299), true(control(oplayer), X43299), succ(X43280, X43274), domdomain(13, X43280), domdomain(14, X43274), domdomain(8, X43280), mtdom(X43299), domdomain(8, X43274).
true(phase(player), X43282 + 1) :- true(phase(random), X43282), mtdom(X43282).
true(phase(random), X43282 + 1) :- true(phase(player), X43282), mtdom(X43282).
true(control(X43274), X43288 + 1) :- true(control(X43274), X43288), true(phase(player), X43288), mtdom(X43288), domdomain(4, X43274).
true(control(X43274), X43293 + 1) :- true(control(X43280), X43293), true(phase(random), X43293), nextXplayer(X43280, X43274), domdomain(4, X43280), mtdom(X43293), domdomain(4, X43274).
true(heap(X43274, X43275), X43297 + 1) :- does(X43279, reduce(X43274, 1), X43297), true(heap(X43274, X43290), X43297), succ(X43275, X43290), domdomain(13, X43275), domdomain(14, X43290), domdomain(8, X43290), domdomain(5, X43279), mtdom(X43297), domdomain(7, X43274), domdomain(8, X43275).
true(heap(X43274, X43275), X43302 + 1) :- does(X43279, reduce(X43274, 2), X43302), true(heap(X43274, X43290), X43302), succ(X43275, X43295), succ(X43295, X43290), domdomain(13, X43295), domdomain(14, X43290), domdomain(13, X43275), domdomain(14, X43295), domdomain(8, X43290), domdomain(5, X43279), mtdom(X43302), domdomain(7, X43274), domdomain(8, X43275).
true(heap(X43274, X43275), X43297 + 1) :- does(random, add(X43274, 1), X43297), true(heap(X43274, X43290), X43297), succ(X43290, X43275), domdomain(13, X43290), domdomain(14, X43275), domdomain(8, X43290), domdomain(1, X43274), mtdom(X43297), domdomain(7, X43274), domdomain(8, X43275).
true(heap(X43274, X43275), X43297 + 1) :- does(random, add(X43282, 1), X43297), true(heap(X43274, X43275), X43297), X43274 != X43282, domdomain(1, X43282), mtdom(X43297), domdomain(7, X43274), domdomain(8, X43275).
true(heap(X43274, X43275), X43295 + 1) :- does(random, noop, X43295), true(phase(random), X43295), true(heap(X43274, X43275), X43295), mtdom(X43295), domdomain(7, X43274), domdomain(8, X43275).
true(heap(X43274, X43275), X43297 + 1) :- does(X43279, reduce(X43282, X43283), X43297), true(heap(X43274, X43275), X43297), X43274 != X43282, domdomain(5, X43279), domdomain(7, X43282), domdomain(12, X43283), mtdom(X43297), domdomain(7, X43274), domdomain(8, X43275).
open(X43284) :- true(heap(X43276, X43277), X43284), small(0, X43277), domdomain(14, X43277), domdomain(7, X43276), domdomain(8, X43277), tdom(X43284).
terminal(X43276) :- not open(X43276), tdom(X43276).
goal(X43272, 100, X43281) :- true(control(X43272), X43281), tdom(X43281), domdomain(4, X43272).
goal(X43272, 0, X43286) :- true(control(X43279), X43286), nextXplayer(X43272, X43279), domdomain(4, X43279), tdom(X43286), domdomain(4, X43272).
nextXplayer(xplayer, oplayer).
nextXplayer(oplayer, xplayer).
pile(a).
terminal(X43278) :- true(round(30), X43278), tdom(X43278).
height(a, 30).
small(X43272, X43273) :- succ(X43272, X43278), small(X43278, X43273), domdomain(13, X43278), domdomain(14, X43278), domdomain(13, X43272), domdomain(14, X43273).
small(X43272, X43273) :- succ(X43272, X43273), domdomain(13, X43272), domdomain(14, X43273).
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
succ(27, 28).
succ(28, 29).
succ(29, 30).
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
domdomain(7, 27).
domdomain(7, 28).
domdomain(7, 29).
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
domdomain(8, 28).
domdomain(8, 29).
domdomain(8, 30).
domdomain(9, 30).
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
domdomain(13, 27).
domdomain(13, 28).
domdomain(13, 29).
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
domdomain(14, 28).
domdomain(14, 29).
domdomain(14, 30).
