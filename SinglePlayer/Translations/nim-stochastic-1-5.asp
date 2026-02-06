mtdom(1..20).
role(xplayer).
role(oplayer).
role(random).
base(round(0)).
base(round(X36946)) :- succ(X36950, X36946), domdomain(13, X36950), domdomain(14, X36946), domdomain(8, X36946).
base(heap(X36946, 0)) :- pile(X36946), domdomain(1, X36946), domdomain(7, X36946).
base(heap(X36946, X36947)) :- pile(X36946), succ(X36946, X36947), domdomain(13, X36946), domdomain(14, X36947), domdomain(1, X36946), domdomain(7, X36946), domdomain(8, X36947).
base(control(xplayer)).
base(control(oplayer)).
base(phase(random)).
base(phase(player)).
input(xplayer, reduce(X36947, 1)) :- pile(X36947), domdomain(1, X36947), domdomain(7, X36947).
input(xplayer, reduce(X36947, 2)) :- pile(X36947), domdomain(1, X36947), domdomain(7, X36947).
input(oplayer, reduce(X36947, 1)) :- pile(X36947), domdomain(1, X36947), domdomain(7, X36947).
input(oplayer, reduce(X36947, 2)) :- pile(X36947), domdomain(1, X36947), domdomain(7, X36947).
input(random, add(X36947, 1)) :- pile(X36947), domdomain(1, X36947).
input(X36944, noop) :- role(X36944), domdomain(5, X36944).
true(heap(X36946, X36947), 1) :- height(X36946, X36947), domdomain(1, X36946), domdomain(9, X36947), domdomain(7, X36946), domdomain(8, X36947).
true(control(xplayer), 1).
true(phase(player), 1).
true(round(0), 1).
legal(xplayer, noop, X36953) :- true(control(oplayer), X36953), tdom(X36953).
legal(xplayer, noop, X36953) :- true(phase(random), X36953), tdom(X36953).
legal(oplayer, noop, X36953) :- true(control(xplayer), X36953), tdom(X36953).
legal(oplayer, noop, X36953) :- true(phase(random), X36953), tdom(X36953).
legal(X36944, noop, X36962) :- true(control(X36951), X36962), role(X36944), X36951 != X36944, domdomain(4, X36951), tdom(X36962), domdomain(5, X36944).
legal(random, add(X36947, 1), X36956) :- true(phase(random), X36956), tdom(X36956), domdomain(1, X36947).
legal(random, noop, X36947) :- tdom(X36947).
legal(X36944, reduce(X36947, 1), X36974) :- true(heap(X36947, X36955), X36974), true(control(X36944), X36974), true(phase(player), X36974), small(0, X36955), domdomain(14, X36955), domdomain(4, X36944), domdomain(8, X36955), tdom(X36974), domdomain(5, X36944), domdomain(7, X36947).
legal(X36944, reduce(X36947, 2), X36974) :- true(heap(X36947, X36955), X36974), true(control(X36944), X36974), true(phase(player), X36974), small(1, X36955), domdomain(14, X36955), domdomain(4, X36944), domdomain(8, X36955), tdom(X36974), domdomain(5, X36944), domdomain(7, X36947).
true(round(X36946), X36960 + 1) :- true(round(X36946), X36960), true(phase(player), X36960), mtdom(X36960), domdomain(8, X36946).
true(round(X36946), X36971 + 1) :- true(round(X36952), X36971), true(phase(random), X36971), true(control(oplayer), X36971), succ(X36952, X36946), domdomain(13, X36952), domdomain(14, X36946), domdomain(8, X36952), mtdom(X36971), domdomain(8, X36946).
true(phase(player), X36954 + 1) :- true(phase(random), X36954), mtdom(X36954).
true(phase(random), X36954 + 1) :- true(phase(player), X36954), mtdom(X36954).
true(control(X36946), X36960 + 1) :- true(control(X36946), X36960), true(phase(player), X36960), mtdom(X36960), domdomain(4, X36946).
true(control(X36946), X36965 + 1) :- true(control(X36952), X36965), true(phase(random), X36965), nextXplayer(X36952, X36946), domdomain(4, X36952), mtdom(X36965), domdomain(4, X36946).
true(heap(X36946, X36947), X36969 + 1) :- does(X36951, reduce(X36946, 1), X36969), true(heap(X36946, X36962), X36969), succ(X36947, X36962), domdomain(13, X36947), domdomain(14, X36962), domdomain(8, X36962), domdomain(5, X36951), mtdom(X36969), domdomain(7, X36946), domdomain(8, X36947).
true(heap(X36946, X36947), X36974 + 1) :- does(X36951, reduce(X36946, 2), X36974), true(heap(X36946, X36962), X36974), succ(X36947, X36967), succ(X36967, X36962), domdomain(13, X36967), domdomain(14, X36962), domdomain(13, X36947), domdomain(14, X36967), domdomain(8, X36962), domdomain(5, X36951), mtdom(X36974), domdomain(7, X36946), domdomain(8, X36947).
true(heap(X36946, X36947), X36969 + 1) :- does(random, add(X36946, 1), X36969), true(heap(X36946, X36962), X36969), succ(X36962, X36947), domdomain(13, X36962), domdomain(14, X36947), domdomain(8, X36962), domdomain(1, X36946), mtdom(X36969), domdomain(7, X36946), domdomain(8, X36947).
true(heap(X36946, X36947), X36969 + 1) :- does(random, add(X36954, 1), X36969), true(heap(X36946, X36947), X36969), X36946 != X36954, domdomain(1, X36954), mtdom(X36969), domdomain(7, X36946), domdomain(8, X36947).
true(heap(X36946, X36947), X36967 + 1) :- does(random, noop, X36967), true(phase(random), X36967), true(heap(X36946, X36947), X36967), mtdom(X36967), domdomain(7, X36946), domdomain(8, X36947).
true(heap(X36946, X36947), X36969 + 1) :- does(X36951, reduce(X36954, X36955), X36969), true(heap(X36946, X36947), X36969), X36946 != X36954, domdomain(5, X36951), domdomain(7, X36954), domdomain(12, X36955), mtdom(X36969), domdomain(7, X36946), domdomain(8, X36947).
open(X36956) :- true(heap(X36948, X36949), X36956), small(0, X36949), domdomain(14, X36949), domdomain(7, X36948), domdomain(8, X36949), tdom(X36956).
terminal(X36948) :- not open(X36948), tdom(X36948).
goal(X36944, 100, X36953) :- true(control(X36944), X36953), tdom(X36953), domdomain(4, X36944).
goal(X36944, 0, X36958) :- true(control(X36951), X36958), nextXplayer(X36944, X36951), domdomain(4, X36951), tdom(X36958), domdomain(4, X36944).
nextXplayer(xplayer, oplayer).
nextXplayer(oplayer, xplayer).
pile(a).
terminal(X36950) :- true(round(5), X36950), tdom(X36950).
height(a, 5).
small(X36944, X36945) :- succ(X36944, X36950), small(X36950, X36945), domdomain(13, X36950), domdomain(14, X36950), domdomain(13, X36944), domdomain(14, X36945).
small(X36944, X36945) :- succ(X36944, X36945), domdomain(13, X36944), domdomain(14, X36945).
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
