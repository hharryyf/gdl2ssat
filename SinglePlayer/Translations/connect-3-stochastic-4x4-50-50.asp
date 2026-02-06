mtdom(1..32).
role(xplayer).
role(oplayer).
role(random).
base(cell(X64043, X64044, xplayer)) :- x(X64043), y(X64044), domdomain(4, X64043), domdomain(4, X64044).
base(cell(X64043, X64044, oplayer)) :- x(X64043), y(X64044), domdomain(4, X64043), domdomain(4, X64044).
base(prev(X64043, X64044, xplayer)) :- x(X64043), y(X64044), domdomain(4, X64043), domdomain(4, X64044).
base(prev(X64043, X64044, oplayer)) :- x(X64043), y(X64044), domdomain(4, X64043), domdomain(4, X64044).
base(control(xplayer)).
base(control(oplayer)).
base(control(random)).
base(prevplayer(xplayer)).
base(prevplayer(oplayer)).
input(xplayer, drop(X64044)) :- x(X64044), domdomain(4, X64044).
input(oplayer, drop(X64044)) :- x(X64044), domdomain(4, X64044).
input(random, act(x, 1)).
input(random, act(o, 1)).
input(X64041, noop) :- role(X64041), domdomain(6, X64041).
true(control(xplayer), 1).
legal(xplayer, noop, X64050) :- true(control(oplayer), X64050), tdom(X64050).
legal(random, noop, X64050) :- true(control(oplayer), X64050), tdom(X64050).
legal(random, noop, X64050) :- true(control(xplayer), X64050), tdom(X64050).
legal(oplayer, noop, X64050) :- true(control(xplayer), X64050), tdom(X64050).
legal(oplayer, noop, X64050) :- true(control(random), X64050), tdom(X64050).
legal(xplayer, noop, X64050) :- true(control(random), X64050), tdom(X64050).
legal(random, act(x, 1), X64053) :- true(control(random), X64053), tdom(X64053).
legal(random, act(o, 1), X64053) :- true(control(random), X64053), tdom(X64053).
legal(xplayer, drop(X64044), X64056) :- true(control(xplayer), X64056), columnopen(X64044, X64056), tdom(X64056), domdomain(4, X64044).
legal(oplayer, drop(X64044), X64056) :- true(control(oplayer), X64056), columnopen(X64044, X64056), tdom(X64056), domdomain(4, X64044).
true(prev(X64043, 1, X64045), X64058 + 1) :- does(X64045, drop(X64043), X64058), columnempty(X64043, X64058), tdom(X64058), mtdom(X64058), domdomain(4, X64043), domdomain(6, X64045).
true(prev(X64043, X64044, X64045), X64071 + 1) :- does(X64045, drop(X64043), X64071), cellopen(X64043, X64044, X64071), succ(X64061, X64044), not cellopen(X64043, X64061, X64071), domdomain(4, X64061), domdomain(10, X64061), domdomain(11, X64044), tdom(X64071), mtdom(X64071), domdomain(4, X64043), domdomain(4, X64044), domdomain(6, X64045).
true(cell(X64043, X64044, xplayer), X64063 + 1) :- does(random, act(x, X64053), X64063), true(prev(X64043, X64044, xplayer), X64063), domdomain(2, X64053), mtdom(X64063), domdomain(4, X64043), domdomain(4, X64044).
true(cell(X64043, X64044, oplayer), X64063 + 1) :- does(random, act(o, X64053), X64063), true(prev(X64043, X64044, xplayer), X64063), domdomain(2, X64053), mtdom(X64063), domdomain(4, X64043), domdomain(4, X64044).
true(cell(X64043, X64044, oplayer), X64063 + 1) :- does(random, act(x, X64053), X64063), true(prev(X64043, X64044, oplayer), X64063), domdomain(2, X64053), mtdom(X64063), domdomain(4, X64043), domdomain(4, X64044).
true(cell(X64043, X64044, xplayer), X64063 + 1) :- does(random, act(o, X64053), X64063), true(prev(X64043, X64044, oplayer), X64063), domdomain(2, X64053), mtdom(X64063), domdomain(4, X64043), domdomain(4, X64044).
true(cell(X64043, X64044, X64045), X64055 + 1) :- true(cell(X64043, X64044, X64045), X64055), mtdom(X64055), domdomain(4, X64043), domdomain(4, X64044), domdomain(5, X64045).
true(prevplayer(oplayer), X64051 + 1) :- true(control(oplayer), X64051), mtdom(X64051).
true(control(random), X64051 + 1) :- true(control(oplayer), X64051), mtdom(X64051).
true(control(random), X64051 + 1) :- true(control(xplayer), X64051), mtdom(X64051).
true(prevplayer(xplayer), X64051 + 1) :- true(control(xplayer), X64051), mtdom(X64051).
true(control(xplayer), X64057 + 1) :- true(control(random), X64057), true(prevplayer(oplayer), X64057), mtdom(X64057).
true(control(oplayer), X64057 + 1) :- true(control(random), X64057), true(prevplayer(xplayer), X64057), mtdom(X64057).
terminal(X64045) :- line(xplayer, X64045), tdom(X64045).
terminal(X64045) :- line(oplayer, X64045), tdom(X64045).
terminal(X64045) :- not boardopen(X64045), tdom(X64045).
goal(xplayer, 100, X64048) :- line(xplayer, X64048), tdom(X64048).
goal(xplayer, 50, X64060) :- not line(xplayer, X64060), not line(oplayer, X64060), not boardopen(X64060), tdom(X64060).
goal(xplayer, 0, X64048) :- line(oplayer, X64048), tdom(X64048).
goal(xplayer, 0, X64058) :- not line(xplayer, X64058), not line(oplayer, X64058), boardopen(X64058), tdom(X64058).
goal(oplayer, 100, X64048) :- line(oplayer, X64048), tdom(X64048).
goal(oplayer, 50, X64060) :- not line(xplayer, X64060), not line(oplayer, X64060), not boardopen(X64060), tdom(X64060).
goal(oplayer, 0, X64048) :- line(xplayer, X64048), tdom(X64048).
goal(oplayer, 0, X64058) :- not line(xplayer, X64058), not line(oplayer, X64058), boardopen(X64058), tdom(X64058).
cellopen(X64041, X64042, X64072) :- x(X64041), y(X64042), not true(cell(X64041, X64042, xplayer), X64072), not true(cell(X64041, X64042, oplayer), X64072), tdom(X64072), domdomain(4, X64041), domdomain(4, X64042).
columnopen(X64041, X64048) :- cellopen(X64041, 4, X64048), tdom(X64048), domdomain(4, X64041).
columnempty(X64041, X64048) :- cellopen(X64041, 1, X64048), tdom(X64048), domdomain(4, X64041).
boardopen(X64049) :- x(X64043), columnopen(X64043, X64049), domdomain(4, X64043), tdom(X64049).
line(X64041, X64077) :- true(cell(X64047, X64048, X64041), X64077), succ(X64047, X64054), succ(X64054, X64059), true(cell(X64054, X64048, X64041), X64077), true(cell(X64059, X64048, X64041), X64077), domdomain(4, X64059), domdomain(4, X64054), domdomain(10, X64054), domdomain(11, X64059), domdomain(10, X64047), domdomain(11, X64054), domdomain(4, X64047), domdomain(4, X64048), tdom(X64077), domdomain(5, X64041).
line(X64041, X64077) :- true(cell(X64047, X64048, X64041), X64077), succ(X64048, X64054), succ(X64054, X64059), true(cell(X64047, X64054, X64041), X64077), true(cell(X64047, X64059, X64041), X64077), domdomain(4, X64059), domdomain(4, X64054), domdomain(10, X64054), domdomain(11, X64059), domdomain(10, X64048), domdomain(11, X64054), domdomain(4, X64047), domdomain(4, X64048), tdom(X64077), domdomain(5, X64041).
line(X64041, X64087) :- true(cell(X64047, X64048, X64041), X64087), succ(X64047, X64054), succ(X64054, X64059), succ(X64048, X64064), succ(X64064, X64069), true(cell(X64054, X64064, X64041), X64087), true(cell(X64059, X64069, X64041), X64087), domdomain(4, X64059), domdomain(4, X64069), domdomain(4, X64054), domdomain(4, X64064), domdomain(10, X64064), domdomain(11, X64069), domdomain(10, X64048), domdomain(11, X64064), domdomain(10, X64054), domdomain(11, X64059), domdomain(10, X64047), domdomain(11, X64054), domdomain(4, X64047), domdomain(4, X64048), tdom(X64087), domdomain(5, X64041).
line(X64041, X64087) :- true(cell(X64047, X64048, X64041), X64087), succ(X64047, X64054), succ(X64054, X64059), succ(X64063, X64048), succ(X64068, X64063), true(cell(X64054, X64063, X64041), X64087), true(cell(X64059, X64068, X64041), X64087), domdomain(4, X64059), domdomain(4, X64068), domdomain(4, X64054), domdomain(4, X64063), domdomain(10, X64068), domdomain(11, X64063), domdomain(10, X64063), domdomain(11, X64048), domdomain(10, X64054), domdomain(11, X64059), domdomain(10, X64047), domdomain(11, X64054), domdomain(4, X64047), domdomain(4, X64048), tdom(X64087), domdomain(5, X64041).
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
domdomain(1, o).
domdomain(1, x).
domdomain(2, 1).
domdomain(3, cell).
domdomain(3, control).
domdomain(3, prev).
domdomain(3, prevplayer).
domdomain(4, 1).
domdomain(4, 2).
domdomain(4, 3).
domdomain(4, 4).
domdomain(5, oplayer).
domdomain(5, xplayer).
domdomain(6, oplayer).
domdomain(6, random).
domdomain(6, xplayer).
domdomain(7, 0).
domdomain(7, 50).
domdomain(7, 100).
domdomain(8, control).
domdomain(9, act).
domdomain(9, drop).
domdomain(9, noop).
domdomain(10, 1).
domdomain(10, 2).
domdomain(10, 3).
domdomain(11, 2).
domdomain(11, 3).
domdomain(11, 4).
