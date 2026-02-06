mtdom(1..24).
role(xplayer).
role(oplayer).
role(random).
xindex(1).
xindex(2).
xindex(3).
yindex(1).
yindex(2).
yindex(3).
yindex(4).
base(cell(X50023, X50024, x)) :- xindex(X50023), yindex(X50024), domdomain(4, X50023), domdomain(5, X50024).
base(cell(X50023, X50024, o)) :- xindex(X50023), yindex(X50024), domdomain(4, X50023), domdomain(5, X50024).
base(prev(X50023, X50024, x)) :- domdomain(4, X50023), domdomain(5, X50024).
base(prev(X50023, X50024, o)) :- domdomain(4, X50023), domdomain(5, X50024).
base(control(X50023)) :- role(X50023), domdomain(6, X50023).
base(prevplayer(xplayer)).
base(prevplayer(oplayer)).
input(xplayer, mark(X50024, X50025)) :- xindex(X50024), yindex(X50025), domdomain(4, X50024), domdomain(5, X50025).
input(oplayer, mark(X50024, X50025)) :- xindex(X50024), yindex(X50025), domdomain(4, X50024), domdomain(5, X50025).
input(random, act(x, 1)).
input(random, act(o, 1)).
input(X50021, noop) :- role(X50021), domdomain(6, X50021).
true(control(xplayer), 1).
true(prev(X50023, X50024, x), X50035 + 1) :- does(xplayer, mark(X50023, X50024), X50035), mtdom(X50035), domdomain(4, X50023), domdomain(5, X50024).
true(prev(X50023, X50024, o), X50035 + 1) :- does(oplayer, mark(X50023, X50024), X50035), mtdom(X50035), domdomain(4, X50023), domdomain(5, X50024).
true(cell(X50023, X50024, x), X50043 + 1) :- does(random, act(x, X50033), X50043), true(prev(X50023, X50024, x), X50043), domdomain(2, X50033), mtdom(X50043), domdomain(4, X50023), domdomain(5, X50024).
true(cell(X50023, X50024, o), X50043 + 1) :- does(random, act(o, X50033), X50043), true(prev(X50023, X50024, x), X50043), domdomain(2, X50033), mtdom(X50043), domdomain(4, X50023), domdomain(5, X50024).
true(cell(X50023, X50024, o), X50043 + 1) :- does(random, act(x, X50033), X50043), true(prev(X50023, X50024, o), X50043), domdomain(2, X50033), mtdom(X50043), domdomain(4, X50023), domdomain(5, X50024).
true(cell(X50023, X50024, x), X50043 + 1) :- does(random, act(o, X50033), X50043), true(prev(X50023, X50024, o), X50043), domdomain(2, X50033), mtdom(X50043), domdomain(4, X50023), domdomain(5, X50024).
true(cell(X50023, X50024, X50025), X50035 + 1) :- true(cell(X50023, X50024, X50025), X50035), mtdom(X50035), domdomain(4, X50023), domdomain(5, X50024), domdomain(1, X50025).
true(prevplayer(oplayer), X50031 + 1) :- true(control(oplayer), X50031), mtdom(X50031).
true(control(random), X50031 + 1) :- true(control(oplayer), X50031), mtdom(X50031).
true(control(random), X50031 + 1) :- true(control(xplayer), X50031), mtdom(X50031).
true(prevplayer(xplayer), X50031 + 1) :- true(control(xplayer), X50031), mtdom(X50031).
true(control(xplayer), X50037 + 1) :- true(control(random), X50037), true(prevplayer(oplayer), X50037), mtdom(X50037).
true(control(oplayer), X50037 + 1) :- true(control(random), X50037), true(prevplayer(xplayer), X50037), mtdom(X50037).
open(X50049) :- not true(cell(X50027, X50028, x), X50049), not true(cell(X50027, X50028, o), X50049), xindex(X50027), yindex(X50028), domdomain(4, X50027), domdomain(5, X50028), tdom(X50049).
legal(X50021, mark(X50024, X50025), X50066) :- not true(cell(X50024, X50025, x), X50066), not true(cell(X50024, X50025, o), X50066), true(control(X50021), X50066), X50021 != random, xindex(X50024), yindex(X50025), tdom(X50066), domdomain(6, X50021), domdomain(4, X50024), domdomain(5, X50025).
legal(xplayer, noop, X50030) :- true(control(oplayer), X50030), tdom(X50030).
legal(random, noop, X50030) :- true(control(oplayer), X50030), tdom(X50030).
legal(random, noop, X50030) :- true(control(xplayer), X50030), tdom(X50030).
legal(oplayer, noop, X50030) :- true(control(xplayer), X50030), tdom(X50030).
legal(oplayer, noop, X50030) :- true(control(random), X50030), tdom(X50030).
legal(xplayer, noop, X50030) :- true(control(random), X50030), tdom(X50030).
legal(random, act(x, 1), X50033) :- true(control(random), X50033), tdom(X50033).
legal(random, act(o, 1), X50033) :- true(control(random), X50033), tdom(X50033).
goal(xplayer, 100, X50028) :- line(x, X50028), tdom(X50028).
goal(xplayer, 50, X50040) :- not line(x, X50040), not line(o, X50040), not open(X50040), tdom(X50040).
goal(xplayer, 0, X50028) :- line(o, X50028), tdom(X50028).
goal(oplayer, 100, X50028) :- line(o, X50028), tdom(X50028).
goal(oplayer, 50, X50040) :- not line(x, X50040), not line(o, X50040), not open(X50040), tdom(X50040).
goal(oplayer, 0, X50028) :- line(x, X50028), tdom(X50028).
terminal(X50025) :- line(x, X50025), tdom(X50025).
terminal(X50025) :- line(o, X50025), tdom(X50025).
terminal(X50025) :- not open(X50025), tdom(X50025).
succ(1, 2).
succ(2, 3).
succ(3, 4).
line(X50021, X50057) :- true(cell(X50027, X50028, X50021), X50057), true(cell(X50027, X50036, X50021), X50057), true(cell(X50027, X50044, X50021), X50057), succ(X50028, X50036), succ(X50036, X50044), domdomain(4, X50036), domdomain(11, X50044), domdomain(4, X50028), domdomain(11, X50036), domdomain(5, X50044), domdomain(5, X50036), domdomain(4, X50027), domdomain(5, X50028), tdom(X50057), domdomain(1, X50021).
line(X50021, X50057) :- true(cell(X50027, X50028, X50021), X50057), true(cell(X50035, X50028, X50021), X50057), true(cell(X50043, X50028, X50021), X50057), succ(X50027, X50035), succ(X50035, X50043), domdomain(11, X50043), domdomain(11, X50035), domdomain(4, X50043), domdomain(4, X50035), domdomain(4, X50027), domdomain(5, X50028), tdom(X50057), domdomain(1, X50021).
line(X50021, X50067) :- true(cell(X50027, X50028, X50021), X50067), true(cell(X50035, X50036, X50021), X50067), true(cell(X50043, X50044, X50021), X50067), succ(X50027, X50035), succ(X50035, X50043), succ(X50028, X50036), succ(X50036, X50044), domdomain(4, X50036), domdomain(11, X50044), domdomain(4, X50028), domdomain(11, X50036), domdomain(11, X50043), domdomain(11, X50035), domdomain(4, X50043), domdomain(5, X50044), domdomain(4, X50035), domdomain(5, X50036), domdomain(4, X50027), domdomain(5, X50028), tdom(X50067), domdomain(1, X50021).
line(X50020, X50066) :- true(cell(X50026, X50027, X50020), X50066), true(cell(X50034, X50035, X50020), X50066), true(cell(X50042, X50043, X50020), X50066), succ(X50042, X50034), succ(X50034, X50026), succ(X50027, X50035), succ(X50035, X50043), domdomain(4, X50035), domdomain(11, X50043), domdomain(4, X50027), domdomain(11, X50035), domdomain(11, X50026), domdomain(11, X50034), domdomain(4, X50042), domdomain(5, X50043), domdomain(4, X50034), domdomain(5, X50035), domdomain(4, X50026), domdomain(5, X50027), tdom(X50066), domdomain(1, X50020).
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
domdomain(5, 1).
domdomain(5, 2).
domdomain(5, 3).
domdomain(5, 4).
domdomain(6, oplayer).
domdomain(6, random).
domdomain(6, xplayer).
domdomain(7, oplayer).
domdomain(7, xplayer).
domdomain(8, 0).
domdomain(8, 50).
domdomain(8, 100).
domdomain(9, control).
domdomain(10, act).
domdomain(10, mark).
domdomain(10, noop).
domdomain(11, 2).
domdomain(11, 3).
domdomain(11, 4).
