mtdom(1..16).
role(xplayer).
role(oplayer).
role(random).
base(cell(X62089, X62090, xplayer)) :- x(X62089), y(X62090), domdomain(2, X62089), domdomain(2, X62090).
base(cell(X62089, X62090, oplayer)) :- x(X62089), y(X62090), domdomain(2, X62089), domdomain(2, X62090).
base(control(xplayer)).
base(control(oplayer)).
base(control(random)).
base(round(1)).
input(X62087, drop(X62090)) :- role(X62087), x(X62090), domdomain(4, X62087), domdomain(2, X62090).
input(X62087, noop) :- role(X62087), domdomain(4, X62087).
true(control(xplayer), 1).
true(round(1), 1).
legal(xplayer, drop(X62090), X62102) :- true(control(xplayer), X62102), columnopen(X62090, X62102), tdom(X62102), domdomain(2, X62090).
legal(random, drop(X62090), X62102) :- true(control(random), X62102), columnopen(X62090, X62102), tdom(X62102), domdomain(2, X62090).
legal(oplayer, drop(X62090), X62102) :- true(control(oplayer), X62102), columnopen(X62090, X62102), tdom(X62102), domdomain(2, X62090).
legal(random, noop, X62096) :- true(control(xplayer), X62096), tdom(X62096).
legal(random, noop, X62096) :- true(control(oplayer), X62096), tdom(X62096).
legal(oplayer, noop, X62096) :- true(control(xplayer), X62096), tdom(X62096).
legal(oplayer, noop, X62096) :- true(control(random), X62096), tdom(X62096).
legal(xplayer, noop, X62096) :- true(control(oplayer), X62096), tdom(X62096).
legal(xplayer, noop, X62096) :- true(control(random), X62096), tdom(X62096).
true(cell(X62089, 1, xplayer), X62104 + 1) :- does(xplayer, drop(X62089), X62104), columnempty(X62089, X62104), tdom(X62104), mtdom(X62104), domdomain(2, X62089).
true(cell(X62089, 1, oplayer), X62104 + 1) :- does(oplayer, drop(X62089), X62104), columnempty(X62089, X62104), tdom(X62104), mtdom(X62104), domdomain(2, X62089).
true(cell(X62089, 1, oplayer), X62104 + 1) :- does(random, drop(X62089), X62104), columnempty(X62089, X62104), tdom(X62104), mtdom(X62104), domdomain(2, X62089).
true(cell(X62089, X62090, xplayer), X62117 + 1) :- does(xplayer, drop(X62089), X62117), cellopen(X62089, X62090, X62117), succ(X62107, X62090), not cellopen(X62089, X62107, X62117), domdomain(2, X62107), domdomain(10, X62107), domdomain(11, X62090), tdom(X62117), mtdom(X62117), domdomain(2, X62089), domdomain(2, X62090).
true(cell(X62089, X62090, oplayer), X62117 + 1) :- does(oplayer, drop(X62089), X62117), cellopen(X62089, X62090, X62117), succ(X62107, X62090), not cellopen(X62089, X62107, X62117), domdomain(2, X62107), domdomain(10, X62107), domdomain(11, X62090), tdom(X62117), mtdom(X62117), domdomain(2, X62089), domdomain(2, X62090).
true(cell(X62089, X62090, oplayer), X62117 + 1) :- does(random, drop(X62089), X62117), cellopen(X62089, X62090, X62117), succ(X62107, X62090), not cellopen(X62089, X62107, X62117), domdomain(2, X62107), domdomain(10, X62107), domdomain(11, X62090), tdom(X62117), mtdom(X62117), domdomain(2, X62089), domdomain(2, X62090).
true(cell(X62089, X62090, X62091), X62101 + 1) :- true(cell(X62089, X62090, X62091), X62101), mtdom(X62101), domdomain(2, X62089), domdomain(2, X62090), domdomain(3, X62091).
true(control(xplayer), X62097 + 1) :- true(control(oplayer), X62097), mtdom(X62097).
true(control(oplayer), X62105 + 1) :- true(control(xplayer), X62105), not true(round(1), X62105), mtdom(X62105).
true(control(xplayer), X62097 + 1) :- true(control(random), X62097), mtdom(X62097).
true(control(random), X62103 + 1) :- true(control(xplayer), X62103), true(round(1), X62103), mtdom(X62103).
terminal(X62091) :- line(xplayer, X62091), tdom(X62091).
terminal(X62091) :- line(oplayer, X62091), tdom(X62091).
terminal(X62091) :- not boardopen(X62091), tdom(X62091).
goal(xplayer, 100, X62094) :- line(xplayer, X62094), tdom(X62094).
goal(xplayer, 50, X62106) :- not line(xplayer, X62106), not line(oplayer, X62106), not boardopen(X62106), tdom(X62106).
goal(xplayer, 0, X62094) :- line(oplayer, X62094), tdom(X62094).
goal(xplayer, 0, X62104) :- not line(xplayer, X62104), not line(oplayer, X62104), boardopen(X62104), tdom(X62104).
goal(oplayer, 100, X62094) :- line(oplayer, X62094), tdom(X62094).
goal(oplayer, 50, X62106) :- not line(xplayer, X62106), not line(oplayer, X62106), not boardopen(X62106), tdom(X62106).
goal(oplayer, 0, X62094) :- line(xplayer, X62094), tdom(X62094).
goal(oplayer, 0, X62104) :- not line(xplayer, X62104), not line(oplayer, X62104), boardopen(X62104), tdom(X62104).
cellopen(X62087, X62088, X62118) :- x(X62087), y(X62088), not true(cell(X62087, X62088, xplayer), X62118), not true(cell(X62087, X62088, oplayer), X62118), tdom(X62118), domdomain(2, X62087), domdomain(2, X62088).
columnopen(X62087, X62094) :- cellopen(X62087, 4, X62094), tdom(X62094), domdomain(2, X62087).
columnempty(X62087, X62094) :- cellopen(X62087, 1, X62094), tdom(X62094), domdomain(2, X62087).
boardopen(X62095) :- x(X62089), columnopen(X62089, X62095), domdomain(2, X62089), tdom(X62095).
line(X62087, X62136) :- true(cell(X62093, X62094, X62087), X62136), succ(X62093, X62100), succ(X62100, X62105), succ(X62105, X62110), true(cell(X62100, X62094, X62087), X62136), true(cell(X62105, X62094, X62087), X62136), true(cell(X62110, X62094, X62087), X62136), domdomain(2, X62110), domdomain(2, X62105), domdomain(2, X62100), domdomain(10, X62105), domdomain(11, X62110), domdomain(10, X62100), domdomain(11, X62105), domdomain(10, X62093), domdomain(11, X62100), domdomain(2, X62093), domdomain(2, X62094), tdom(X62136), domdomain(3, X62087).
line(X62087, X62136) :- true(cell(X62093, X62094, X62087), X62136), succ(X62094, X62100), succ(X62100, X62105), succ(X62105, X62110), true(cell(X62093, X62100, X62087), X62136), true(cell(X62093, X62105, X62087), X62136), true(cell(X62093, X62110, X62087), X62136), domdomain(2, X62110), domdomain(2, X62105), domdomain(2, X62100), domdomain(10, X62105), domdomain(11, X62110), domdomain(10, X62100), domdomain(11, X62105), domdomain(10, X62094), domdomain(11, X62100), domdomain(2, X62093), domdomain(2, X62094), tdom(X62136), domdomain(3, X62087).
line(X62087, X62151) :- true(cell(X62093, X62094, X62087), X62151), succ(X62093, X62100), succ(X62100, X62105), succ(X62105, X62110), succ(X62094, X62115), succ(X62115, X62120), succ(X62120, X62125), true(cell(X62100, X62115, X62087), X62151), true(cell(X62105, X62120, X62087), X62151), true(cell(X62110, X62125, X62087), X62151), domdomain(2, X62110), domdomain(2, X62125), domdomain(2, X62105), domdomain(2, X62120), domdomain(2, X62100), domdomain(2, X62115), domdomain(10, X62120), domdomain(11, X62125), domdomain(10, X62115), domdomain(11, X62120), domdomain(10, X62094), domdomain(11, X62115), domdomain(10, X62105), domdomain(11, X62110), domdomain(10, X62100), domdomain(11, X62105), domdomain(10, X62093), domdomain(11, X62100), domdomain(2, X62093), domdomain(2, X62094), tdom(X62151), domdomain(3, X62087).
line(X62087, X62151) :- true(cell(X62093, X62094, X62087), X62151), succ(X62093, X62100), succ(X62100, X62105), succ(X62105, X62110), succ(X62114, X62094), succ(X62119, X62114), succ(X62124, X62119), true(cell(X62100, X62114, X62087), X62151), true(cell(X62105, X62119, X62087), X62151), true(cell(X62110, X62124, X62087), X62151), domdomain(2, X62110), domdomain(2, X62124), domdomain(2, X62105), domdomain(2, X62119), domdomain(2, X62100), domdomain(2, X62114), domdomain(10, X62124), domdomain(11, X62119), domdomain(10, X62119), domdomain(11, X62114), domdomain(10, X62114), domdomain(11, X62094), domdomain(10, X62105), domdomain(11, X62110), domdomain(10, X62100), domdomain(11, X62105), domdomain(10, X62093), domdomain(11, X62100), domdomain(2, X62093), domdomain(2, X62094), tdom(X62151), domdomain(3, X62087).
succ(1, 2).
succ(2, 3).
succ(3, 4).
x(1).
x(2).
x(3).
x(4).
y(1).
y(2).
y(3).
y(4).
domdomain(1, cell).
domdomain(1, control).
domdomain(1, round).
domdomain(2, 1).
domdomain(2, 2).
domdomain(2, 3).
domdomain(2, 4).
domdomain(3, oplayer).
domdomain(3, xplayer).
domdomain(4, oplayer).
domdomain(4, random).
domdomain(4, xplayer).
domdomain(5, 0).
domdomain(5, 50).
domdomain(5, 100).
domdomain(6, control).
domdomain(6, round).
domdomain(7, drop).
domdomain(7, noop).
domdomain(8, cell).
domdomain(8, control).
domdomain(9, 1).
domdomain(10, 1).
domdomain(10, 2).
domdomain(10, 3).
domdomain(11, 2).
domdomain(11, 3).
domdomain(11, 4).
