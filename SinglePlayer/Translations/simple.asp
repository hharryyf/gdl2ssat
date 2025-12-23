role(xplayer).
role(random).
mtdom(1..1).

input(xplayer, a1).
input(xplayer, a2).
input(random, a1).
input(random, a2).
input(random, a3).
true(round(1), 1).

legal(random, a1, T) :- tdom(T).
legal(random, a2, T) :- tdom(T).
legal(random, a3, T) :- tdom(T).
legal(xplayer, a1, T) :- tdom(T).
legal(xplayer, a2, T) :- tdom(T).

true(win, T + 1) :- does(xplayer, a1, T), does(random, a1, T), mtdom(T).
true(win, T + 1) :- does(xplayer, a2, T), does(random, a2, T), mtdom(T).
true(win, T + 1) :- does(xplayer, a2, T), does(random, a1, T), mtdom(T).


true(round(2), T + 1) :- true(round(1), T), mtdom(T).
terminal(T) :- true(round(2), T).
goal(xplayer, 100, T) :- true(win, T), tdom(T).
