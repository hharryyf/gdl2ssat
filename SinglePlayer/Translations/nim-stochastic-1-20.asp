mtdom(1..80).
role(xplayer).
role(oplayer).
role(random).
base(round(0)).
base(round(X40012)) :- succ(X40016, X40012), domdomain(13, X40016), domdomain(14, X40012), domdomain(8, X40012).
base(heap(X40012, 0)) :- pile(X40012), domdomain(1, X40012), domdomain(7, X40012).
base(heap(X40012, X40013)) :- pile(X40012), succ(X40012, X40013), domdomain(13, X40012), domdomain(14, X40013), domdomain(1, X40012), domdomain(7, X40012), domdomain(8, X40013).
base(control(xplayer)).
base(control(oplayer)).
base(phase(random)).
base(phase(player)).
input(xplayer, reduce(X40013, 1)) :- pile(X40013), domdomain(1, X40013), domdomain(7, X40013).
input(xplayer, reduce(X40013, 2)) :- pile(X40013), domdomain(1, X40013), domdomain(7, X40013).
input(oplayer, reduce(X40013, 1)) :- pile(X40013), domdomain(1, X40013), domdomain(7, X40013).
input(oplayer, reduce(X40013, 2)) :- pile(X40013), domdomain(1, X40013), domdomain(7, X40013).
input(random, add(X40013, 1)) :- pile(X40013), domdomain(1, X40013).
input(X40010, noop) :- role(X40010), domdomain(5, X40010).
true(heap(X40012, X40013), 1) :- height(X40012, X40013), domdomain(1, X40012), domdomain(9, X40013), domdomain(7, X40012), domdomain(8, X40013).
true(control(xplayer), 1).
true(phase(player), 1).
true(round(0), 1).
legal(xplayer, noop, X40019) :- true(control(oplayer), X40019), tdom(X40019).
legal(xplayer, noop, X40019) :- true(phase(random), X40019), tdom(X40019).
legal(oplayer, noop, X40019) :- true(control(xplayer), X40019), tdom(X40019).
legal(oplayer, noop, X40019) :- true(phase(random), X40019), tdom(X40019).
legal(X40010, noop, X40028) :- true(control(X40017), X40028), role(X40010), X40017 != X40010, domdomain(4, X40017), tdom(X40028), domdomain(5, X40010).
legal(random, add(X40013, 1), X40022) :- true(phase(random), X40022), tdom(X40022), domdomain(1, X40013).
legal(random, noop, X40013) :- tdom(X40013).
legal(X40010, reduce(X40013, 1), X40040) :- true(heap(X40013, X40021), X40040), true(control(X40010), X40040), true(phase(player), X40040), small(0, X40021), domdomain(14, X40021), domdomain(4, X40010), domdomain(8, X40021), tdom(X40040), domdomain(5, X40010), domdomain(7, X40013).
legal(X40010, reduce(X40013, 2), X40040) :- true(heap(X40013, X40021), X40040), true(control(X40010), X40040), true(phase(player), X40040), small(1, X40021), domdomain(14, X40021), domdomain(4, X40010), domdomain(8, X40021), tdom(X40040), domdomain(5, X40010), domdomain(7, X40013).
true(round(X40012), X40026 + 1) :- true(round(X40012), X40026), true(phase(player), X40026), mtdom(X40026), domdomain(8, X40012).
true(round(X40012), X40037 + 1) :- true(round(X40018), X40037), true(phase(random), X40037), true(control(oplayer), X40037), succ(X40018, X40012), domdomain(13, X40018), domdomain(14, X40012), domdomain(8, X40018), mtdom(X40037), domdomain(8, X40012).
true(phase(player), X40020 + 1) :- true(phase(random), X40020), mtdom(X40020).
true(phase(random), X40020 + 1) :- true(phase(player), X40020), mtdom(X40020).
true(control(X40012), X40026 + 1) :- true(control(X40012), X40026), true(phase(player), X40026), mtdom(X40026), domdomain(4, X40012).
true(control(X40012), X40031 + 1) :- true(control(X40018), X40031), true(phase(random), X40031), nextXplayer(X40018, X40012), domdomain(4, X40018), mtdom(X40031), domdomain(4, X40012).
true(heap(X40012, X40013), X40035 + 1) :- does(X40017, reduce(X40012, 1), X40035), true(heap(X40012, X40028), X40035), succ(X40013, X40028), domdomain(13, X40013), domdomain(14, X40028), domdomain(8, X40028), domdomain(5, X40017), mtdom(X40035), domdomain(7, X40012), domdomain(8, X40013).
true(heap(X40012, X40013), X40040 + 1) :- does(X40017, reduce(X40012, 2), X40040), true(heap(X40012, X40028), X40040), succ(X40013, X40033), succ(X40033, X40028), domdomain(13, X40033), domdomain(14, X40028), domdomain(13, X40013), domdomain(14, X40033), domdomain(8, X40028), domdomain(5, X40017), mtdom(X40040), domdomain(7, X40012), domdomain(8, X40013).
true(heap(X40012, X40013), X40035 + 1) :- does(random, add(X40012, 1), X40035), true(heap(X40012, X40028), X40035), succ(X40028, X40013), domdomain(13, X40028), domdomain(14, X40013), domdomain(8, X40028), domdomain(1, X40012), mtdom(X40035), domdomain(7, X40012), domdomain(8, X40013).
true(heap(X40012, X40013), X40035 + 1) :- does(random, add(X40020, 1), X40035), true(heap(X40012, X40013), X40035), X40012 != X40020, domdomain(1, X40020), mtdom(X40035), domdomain(7, X40012), domdomain(8, X40013).
true(heap(X40012, X40013), X40033 + 1) :- does(random, noop, X40033), true(phase(random), X40033), true(heap(X40012, X40013), X40033), mtdom(X40033), domdomain(7, X40012), domdomain(8, X40013).
true(heap(X40012, X40013), X40035 + 1) :- does(X40017, reduce(X40020, X40021), X40035), true(heap(X40012, X40013), X40035), X40012 != X40020, domdomain(5, X40017), domdomain(7, X40020), domdomain(12, X40021), mtdom(X40035), domdomain(7, X40012), domdomain(8, X40013).
open(X40022) :- true(heap(X40014, X40015), X40022), small(0, X40015), domdomain(14, X40015), domdomain(7, X40014), domdomain(8, X40015), tdom(X40022).
terminal(X40014) :- not open(X40014), tdom(X40014).
goal(X40010, 100, X40019) :- true(control(X40010), X40019), tdom(X40019), domdomain(4, X40010).
goal(X40010, 0, X40024) :- true(control(X40017), X40024), nextXplayer(X40010, X40017), domdomain(4, X40017), tdom(X40024), domdomain(4, X40010).
nextXplayer(xplayer, oplayer).
nextXplayer(oplayer, xplayer).
pile(a).
terminal(X40016) :- true(round(20), X40016), tdom(X40016).
height(a, 20).
small(X40010, X40011) :- succ(X40010, X40016), small(X40016, X40011), domdomain(13, X40016), domdomain(14, X40016), domdomain(13, X40010), domdomain(14, X40011).
small(X40010, X40011) :- succ(X40010, X40011), domdomain(13, X40010), domdomain(14, X40011).
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
domdomain(9, 20).
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
