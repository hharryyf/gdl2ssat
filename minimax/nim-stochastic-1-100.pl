role(xplayer).
role(oplayer).
role(random).

init(heap(X,Y)) :- height(X,Y).
init(control(xplayer)).
init(phase(player)).
init(round(0)).

legal(xplayer, noop) :- true(control(oplayer)).

legal(xplayer, noop) :- true(phase(random)).


legal(oplayer, noop) :- true(control(xplayer)).

legal(oplayer, noop) :- true(phase(random)).

legal(P, noop) :- true(control(O)), role(O), role(P), P \= O.

legal(random, add(X, 1)) :- pile(X), true(phase(random)).

legal(random, noop).

legal(P, reduce(X, 1)) :- true(heap(X, M)), true(control(P)), true(phase(player)), small(0, M).


legal(P, reduce(X, 2)) :- true(heap(X, M)), true(control(P)), true(phase(player)), small(1, M).

next(round(X)) :- true(round(X)), true(phase(player)).

next(round(X)) :- true(round(X)), true(phase(random)), true(control(xplayer)).

next(round(Y)) :- true(round(X)), true(phase(random)), true(control(oplayer)), succ(X, Y).

next(phase(player)) :- true(phase(random)).

next(phase(random)) :- true(phase(player)).

next(control(P)) :- true(control(P)), true(phase(player)).

next(control(Q)) :- true(control(P)), true(phase(random)), nextplayer(P, Q).

next(heap(X, M)) :- does(P, reduce(X, 1)), true(heap(X, N)), succ(M, N).

next(heap(X, M)) :- does(P, reduce(X, 2)), true(heap(X, N)), succ(M, Z), succ(Z, N).

next(heap(X, M)) :- does(random, add(X, 1)), true(heap(X, N)), succ(N, M).

next(heap(X, N)) :- does(random, add(Y, 1)), true(heap(X, N)), X \= Y.

next(heap(X, N)) :- does(random, noop), true(phase(random)), true(heap(X, N)).

next(heap(X, N)) :- does(P, reduce(Y, K)), true(heap(X, N)), X \= Y.

open :- true(heap(X, P)), small(0, P).

terminal :- \+ open.

goal(P, 100) :- true(control(P)).

goal(P, 0) :- true(control(P1)), nextplayer(P, P1).


nextplayer(xplayer, oplayer).
nextplayer(oplayer, xplayer).

pile(a).


terminal :- true(round(100)).

height(a, 100).

small(A, B) :- succ(A, C), small(C, B).

small(A, B) :- succ(A, B).

succ(0,1).
succ(1,2).
succ(2,3).
succ(3,4).
succ(4,5).
succ(5,6).
succ(6,7).
succ(7,8).
succ(8,9).
succ(9,10).
succ(10,11).
succ(11,12).
succ(12,13).
succ(13,14).
succ(14,15).
succ(15,16).
succ(16,17).
succ(17,18).
succ(18,19).
succ(19,20).
succ(20,21).
succ(21,22).
succ(22,23).
succ(23,24).
succ(24,25).
succ(25,26).
succ(26,27).
succ(27,28).
succ(28,29).
succ(29,30).
succ(30,31).
succ(31,32).
succ(32,33).
succ(33,34).
succ(34,35).
succ(35,36).
succ(36,37).
succ(37,38).
succ(38,39).
succ(39,40).
succ(40,41).
succ(41,42).
succ(42,43).
succ(43,44).
succ(44,45).
succ(45,46).
succ(46,47).
succ(47,48).
succ(48,49).
succ(49,50).
succ(50,51).
succ(51,52).
succ(52,53).
succ(53,54).
succ(54,55).
succ(55,56).
succ(56,57).
succ(57,58).
succ(58,59).
succ(59,60).
succ(60,61).
succ(61,62).
succ(62,63).
succ(63,64).
succ(64,65).
succ(65,66).
succ(66,67).
succ(67,68).
succ(68,69).
succ(69,70).
succ(70,71).
succ(71,72).
succ(72,73).
succ(73,74).
succ(74,75).
succ(75,76).
succ(76,77).
succ(77,78).
succ(78,79).
succ(79,80).
succ(80,81).
succ(81,82).
succ(82,83).
succ(83,84).
succ(84,85).
succ(85,86).
succ(86,87).
succ(87,88).
succ(88,89).
succ(89,90).
succ(90,91).
succ(91,92).
succ(92,93).
succ(93,94).
succ(94,95).
succ(95,96).
succ(96,97).
succ(97,98).
succ(98,99).
succ(99,100).
