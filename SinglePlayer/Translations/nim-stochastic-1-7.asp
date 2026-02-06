mtdom(1..28).
role(xplayer).
role(oplayer).
role(random).
base(round(0)).
base(round(X37324)) :- succ(X37328, X37324), domdomain(13, X37328), domdomain(14, X37324), domdomain(8, X37324).
base(heap(X37324, 0)) :- pile(X37324), domdomain(1, X37324), domdomain(7, X37324).
base(heap(X37324, X37325)) :- pile(X37324), succ(X37324, X37325), domdomain(13, X37324), domdomain(14, X37325), domdomain(1, X37324), domdomain(7, X37324), domdomain(8, X37325).
base(control(xplayer)).
base(control(oplayer)).
base(phase(random)).
base(phase(player)).
input(xplayer, reduce(X37325, 1)) :- pile(X37325), domdomain(1, X37325), domdomain(7, X37325).
input(xplayer, reduce(X37325, 2)) :- pile(X37325), domdomain(1, X37325), domdomain(7, X37325).
input(oplayer, reduce(X37325, 1)) :- pile(X37325), domdomain(1, X37325), domdomain(7, X37325).
input(oplayer, reduce(X37325, 2)) :- pile(X37325), domdomain(1, X37325), domdomain(7, X37325).
input(random, add(X37325, 1)) :- pile(X37325), domdomain(1, X37325).
input(X37322, noop) :- role(X37322), domdomain(5, X37322).
true(heap(X37324, X37325), 1) :- height(X37324, X37325), domdomain(1, X37324), domdomain(9, X37325), domdomain(7, X37324), domdomain(8, X37325).
true(control(xplayer), 1).
true(phase(player), 1).
true(round(0), 1).
legal(xplayer, noop, X37331) :- true(control(oplayer), X37331), tdom(X37331).
legal(xplayer, noop, X37331) :- true(phase(random), X37331), tdom(X37331).
legal(oplayer, noop, X37331) :- true(control(xplayer), X37331), tdom(X37331).
legal(oplayer, noop, X37331) :- true(phase(random), X37331), tdom(X37331).
legal(X37322, noop, X37340) :- true(control(X37329), X37340), role(X37322), X37329 != X37322, domdomain(4, X37329), tdom(X37340), domdomain(5, X37322).
legal(random, add(X37325, 1), X37334) :- true(phase(random), X37334), tdom(X37334), domdomain(1, X37325).
legal(random, noop, X37325) :- tdom(X37325).
legal(X37322, reduce(X37325, 1), X37352) :- true(heap(X37325, X37333), X37352), true(control(X37322), X37352), true(phase(player), X37352), small(0, X37333), domdomain(14, X37333), domdomain(4, X37322), domdomain(8, X37333), tdom(X37352), domdomain(5, X37322), domdomain(7, X37325).
legal(X37322, reduce(X37325, 2), X37352) :- true(heap(X37325, X37333), X37352), true(control(X37322), X37352), true(phase(player), X37352), small(1, X37333), domdomain(14, X37333), domdomain(4, X37322), domdomain(8, X37333), tdom(X37352), domdomain(5, X37322), domdomain(7, X37325).
true(round(X37324), X37338 + 1) :- true(round(X37324), X37338), true(phase(player), X37338), mtdom(X37338), domdomain(8, X37324).
true(round(X37324), X37349 + 1) :- true(round(X37330), X37349), true(phase(random), X37349), true(control(oplayer), X37349), succ(X37330, X37324), domdomain(13, X37330), domdomain(14, X37324), domdomain(8, X37330), mtdom(X37349), domdomain(8, X37324).
true(phase(player), X37332 + 1) :- true(phase(random), X37332), mtdom(X37332).
true(phase(random), X37332 + 1) :- true(phase(player), X37332), mtdom(X37332).
true(control(X37324), X37338 + 1) :- true(control(X37324), X37338), true(phase(player), X37338), mtdom(X37338), domdomain(4, X37324).
true(control(X37324), X37343 + 1) :- true(control(X37330), X37343), true(phase(random), X37343), nextXplayer(X37330, X37324), domdomain(4, X37330), mtdom(X37343), domdomain(4, X37324).
true(heap(X37324, X37325), X37347 + 1) :- does(X37329, reduce(X37324, 1), X37347), true(heap(X37324, X37340), X37347), succ(X37325, X37340), domdomain(13, X37325), domdomain(14, X37340), domdomain(8, X37340), domdomain(5, X37329), mtdom(X37347), domdomain(7, X37324), domdomain(8, X37325).
true(heap(X37324, X37325), X37352 + 1) :- does(X37329, reduce(X37324, 2), X37352), true(heap(X37324, X37340), X37352), succ(X37325, X37345), succ(X37345, X37340), domdomain(13, X37345), domdomain(14, X37340), domdomain(13, X37325), domdomain(14, X37345), domdomain(8, X37340), domdomain(5, X37329), mtdom(X37352), domdomain(7, X37324), domdomain(8, X37325).
true(heap(X37324, X37325), X37347 + 1) :- does(random, add(X37324, 1), X37347), true(heap(X37324, X37340), X37347), succ(X37340, X37325), domdomain(13, X37340), domdomain(14, X37325), domdomain(8, X37340), domdomain(1, X37324), mtdom(X37347), domdomain(7, X37324), domdomain(8, X37325).
true(heap(X37324, X37325), X37347 + 1) :- does(random, add(X37332, 1), X37347), true(heap(X37324, X37325), X37347), X37324 != X37332, domdomain(1, X37332), mtdom(X37347), domdomain(7, X37324), domdomain(8, X37325).
true(heap(X37324, X37325), X37345 + 1) :- does(random, noop, X37345), true(phase(random), X37345), true(heap(X37324, X37325), X37345), mtdom(X37345), domdomain(7, X37324), domdomain(8, X37325).
true(heap(X37324, X37325), X37347 + 1) :- does(X37329, reduce(X37332, X37333), X37347), true(heap(X37324, X37325), X37347), X37324 != X37332, domdomain(5, X37329), domdomain(7, X37332), domdomain(12, X37333), mtdom(X37347), domdomain(7, X37324), domdomain(8, X37325).
open(X37334) :- true(heap(X37326, X37327), X37334), small(0, X37327), domdomain(14, X37327), domdomain(7, X37326), domdomain(8, X37327), tdom(X37334).
terminal(X37326) :- not open(X37326), tdom(X37326).
goal(X37322, 100, X37331) :- true(control(X37322), X37331), tdom(X37331), domdomain(4, X37322).
goal(X37322, 0, X37336) :- true(control(X37329), X37336), nextXplayer(X37322, X37329), domdomain(4, X37329), tdom(X37336), domdomain(4, X37322).
nextXplayer(xplayer, oplayer).
nextXplayer(oplayer, xplayer).
pile(a).
terminal(X37328) :- true(round(7), X37328), tdom(X37328).
height(a, 7).
small(X37322, X37323) :- succ(X37322, X37328), small(X37328, X37323), domdomain(13, X37328), domdomain(14, X37328), domdomain(13, X37322), domdomain(14, X37323).
small(X37322, X37323) :- succ(X37322, X37323), domdomain(13, X37322), domdomain(14, X37323).
succ(0, 1).
succ(1, 2).
succ(2, 3).
succ(3, 4).
succ(4, 5).
succ(5, 6).
succ(6, 7).
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
domdomain(7, a).
domdomain(8, 0).
domdomain(8, 1).
domdomain(8, 2).
domdomain(8, 3).
domdomain(8, 4).
domdomain(8, 5).
domdomain(8, 6).
domdomain(8, 7).
domdomain(9, 7).
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
domdomain(14, 1).
domdomain(14, 2).
domdomain(14, 3).
domdomain(14, 4).
domdomain(14, 5).
domdomain(14, 6).
domdomain(14, 7).
