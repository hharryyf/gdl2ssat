mtdom(1..1).
role(xplayer).
role(random).
base(xrock).
base(xpaper).
base(xscissors).
base(rrock).
base(rpaper).
base(rscissors).
base(start).
input(X22208, rock) :- role(X22208), domdomain(2, X22208).
input(X22208, scissors) :- role(X22208), domdomain(2, X22208).
input(X22208, paper) :- role(X22208), domdomain(2, X22208).
true(start, 1).
legal(xplayer, rock, X22211) :- tdom(X22211).
legal(xplayer, paper, X22211) :- tdom(X22211).
legal(xplayer, scissors, X22211) :- tdom(X22211).
legal(random, rock, X22211) :- tdom(X22211).
legal(random, paper, X22211) :- tdom(X22211).
legal(random, scissors, X22211) :- tdom(X22211).
true(xpaper, X22215 + 1) :- does(xplayer, paper, X22215), mtdom(X22215).
true(xscissors, X22215 + 1) :- does(xplayer, scissors, X22215), mtdom(X22215).
true(xrock, X22215 + 1) :- does(xplayer, rock, X22215), mtdom(X22215).
true(rpaper, X22215 + 1) :- does(random, paper, X22215), mtdom(X22215).
true(rscissors, X22215 + 1) :- does(random, scissors, X22215), mtdom(X22215).
true(rrock, X22215 + 1) :- does(random, rock, X22215), mtdom(X22215).
terminal(X22214) :- not true(start, X22214), tdom(X22214).
goal(xplayer, 100, X22219) :- true(xpaper, X22219), true(rrock, X22219), tdom(X22219).
goal(random, 0, X22219) :- true(xpaper, X22219), true(rrock, X22219), tdom(X22219).
goal(xplayer, 100, X22219) :- true(xscissors, X22219), true(rpaper, X22219), tdom(X22219).
goal(random, 0, X22219) :- true(xscissors, X22219), true(rpaper, X22219), tdom(X22219).
goal(xplayer, 100, X22219) :- true(xrock, X22219), true(rscissors, X22219), tdom(X22219).
goal(random, 0, X22219) :- true(xrock, X22219), true(rscissors, X22219), tdom(X22219).
goal(random, 100, X22219) :- true(rpaper, X22219), true(xrock, X22219), tdom(X22219).
goal(xplayer, 0, X22219) :- true(rpaper, X22219), true(xrock, X22219), tdom(X22219).
goal(random, 100, X22219) :- true(rscissors, X22219), true(xpaper, X22219), tdom(X22219).
goal(xplayer, 0, X22219) :- true(rscissors, X22219), true(xpaper, X22219), tdom(X22219).
goal(random, 100, X22219) :- true(rrock, X22219), true(xscissors, X22219), tdom(X22219).
goal(xplayer, 0, X22219) :- true(rrock, X22219), true(xscissors, X22219), tdom(X22219).
goal(random, 50, X22219) :- true(rpaper, X22219), true(xpaper, X22219), tdom(X22219).
goal(random, 50, X22219) :- true(rscissors, X22219), true(xscissors, X22219), tdom(X22219).
goal(random, 50, X22219) :- true(rrock, X22219), true(xrock, X22219), tdom(X22219).
goal(xplayer, 50, X22219) :- true(rpaper, X22219), true(xpaper, X22219), tdom(X22219).
goal(xplayer, 50, X22219) :- true(rscissors, X22219), true(xscissors, X22219), tdom(X22219).
goal(xplayer, 50, X22218) :- true(rrock, X22218), true(xrock, X22218), tdom(X22218).
domdomain(1, rpaper).
domdomain(1, rrock).
domdomain(1, rscissors).
domdomain(1, start).
domdomain(1, xpaper).
domdomain(1, xrock).
domdomain(1, xscissors).
domdomain(2, random).
domdomain(2, xplayer).
domdomain(3, 0).
domdomain(3, 50).
domdomain(3, 100).
domdomain(4, start).
domdomain(5, paper).
domdomain(5, rock).
domdomain(5, scissors).
domdomain(6, rpaper).
domdomain(6, rrock).
domdomain(6, rscissors).
domdomain(6, xpaper).
domdomain(6, xrock).
domdomain(6, xscissors).
