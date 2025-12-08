tdom(T+1) :- mtdom(T). tdom(1).
1 {does(xplayer, A, T) : input(xplayer, A)} 1 :- mtdom(T), not terminated(T).
terminated(T) :- terminal(T).
terminated(T+1) :- terminated(T), mtdom(T).
:- does(R, A, T), not legal(R, A, T).
:- 0 {terminated(T) : tdom(T)} 0.
:- not goal(xplayer, 100, T), terminated(T), not terminated(T-1).

