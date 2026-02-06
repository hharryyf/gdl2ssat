mtdom(1..32).
role(xplayer).
role(oplayer).
role(random).
index(1).
index(2).
index(3).
index(4).
base(cell(X49001, X49002, x)) :- index(X49001), index(X49002), domdomain(4, X49001), domdomain(4, X49002).
base(cell(X49001, X49002, o)) :- index(X49001), index(X49002), domdomain(4, X49001), domdomain(4, X49002).
base(prev(X49001, X49002, x)) :- domdomain(4, X49001), domdomain(4, X49002).
base(prev(X49001, X49002, o)) :- domdomain(4, X49001), domdomain(4, X49002).
base(control(X49001)) :- role(X49001), domdomain(5, X49001).
base(prevplayer(xplayer)).
base(prevplayer(oplayer)).
input(xplayer, mark(X49002, X49003)) :- index(X49002), index(X49003), domdomain(4, X49002), domdomain(4, X49003).
input(oplayer, mark(X49002, X49003)) :- index(X49002), index(X49003), domdomain(4, X49002), domdomain(4, X49003).
input(random, act(x, 1)).
input(random, act(o, 1)).
input(X48999, noop) :- role(X48999), domdomain(5, X48999).
true(control(xplayer), 1).
true(prev(X49001, X49002, x), X49013 + 1) :- does(xplayer, mark(X49001, X49002), X49013), mtdom(X49013), domdomain(4, X49001), domdomain(4, X49002).
true(prev(X49001, X49002, o), X49013 + 1) :- does(oplayer, mark(X49001, X49002), X49013), mtdom(X49013), domdomain(4, X49001), domdomain(4, X49002).
true(cell(X49001, X49002, x), X49021 + 1) :- does(random, act(x, X49011), X49021), true(prev(X49001, X49002, x), X49021), domdomain(2, X49011), mtdom(X49021), domdomain(4, X49001), domdomain(4, X49002).
true(cell(X49001, X49002, o), X49021 + 1) :- does(random, act(o, X49011), X49021), true(prev(X49001, X49002, x), X49021), domdomain(2, X49011), mtdom(X49021), domdomain(4, X49001), domdomain(4, X49002).
true(cell(X49001, X49002, o), X49021 + 1) :- does(random, act(x, X49011), X49021), true(prev(X49001, X49002, o), X49021), domdomain(2, X49011), mtdom(X49021), domdomain(4, X49001), domdomain(4, X49002).
true(cell(X49001, X49002, x), X49021 + 1) :- does(random, act(o, X49011), X49021), true(prev(X49001, X49002, o), X49021), domdomain(2, X49011), mtdom(X49021), domdomain(4, X49001), domdomain(4, X49002).
true(cell(X49001, X49002, X49003), X49013 + 1) :- true(cell(X49001, X49002, X49003), X49013), mtdom(X49013), domdomain(4, X49001), domdomain(4, X49002), domdomain(1, X49003).
true(prevplayer(oplayer), X49009 + 1) :- true(control(oplayer), X49009), mtdom(X49009).
true(control(random), X49009 + 1) :- true(control(oplayer), X49009), mtdom(X49009).
true(control(random), X49009 + 1) :- true(control(xplayer), X49009), mtdom(X49009).
true(prevplayer(xplayer), X49009 + 1) :- true(control(xplayer), X49009), mtdom(X49009).
true(control(xplayer), X49015 + 1) :- true(control(random), X49015), true(prevplayer(oplayer), X49015), mtdom(X49015).
true(control(oplayer), X49015 + 1) :- true(control(random), X49015), true(prevplayer(xplayer), X49015), mtdom(X49015).
open(X49027) :- not true(cell(X49005, X49006, x), X49027), not true(cell(X49005, X49006, o), X49027), index(X49005), index(X49006), domdomain(4, X49005), domdomain(4, X49006), tdom(X49027).
legal(X48999, mark(X49002, X49003), X49044) :- not true(cell(X49002, X49003, x), X49044), not true(cell(X49002, X49003, o), X49044), true(control(X48999), X49044), X48999 != random, index(X49002), index(X49003), tdom(X49044), domdomain(5, X48999), domdomain(4, X49002), domdomain(4, X49003).
legal(xplayer, noop, X49008) :- true(control(oplayer), X49008), tdom(X49008).
legal(random, noop, X49008) :- true(control(oplayer), X49008), tdom(X49008).
legal(random, noop, X49008) :- true(control(xplayer), X49008), tdom(X49008).
legal(oplayer, noop, X49008) :- true(control(xplayer), X49008), tdom(X49008).
legal(oplayer, noop, X49008) :- true(control(random), X49008), tdom(X49008).
legal(xplayer, noop, X49008) :- true(control(random), X49008), tdom(X49008).
legal(random, act(x, 1), X49011) :- true(control(random), X49011), tdom(X49011).
legal(random, act(o, 1), X49011) :- true(control(random), X49011), tdom(X49011).
goal(xplayer, 100, X49006) :- line(x, X49006), tdom(X49006).
goal(xplayer, 50, X49018) :- not line(x, X49018), not line(o, X49018), not open(X49018), tdom(X49018).
goal(xplayer, 0, X49006) :- line(o, X49006), tdom(X49006).
goal(oplayer, 100, X49006) :- line(o, X49006), tdom(X49006).
goal(oplayer, 50, X49018) :- not line(x, X49018), not line(o, X49018), not open(X49018), tdom(X49018).
goal(oplayer, 0, X49006) :- line(x, X49006), tdom(X49006).
terminal(X49003) :- line(x, X49003), tdom(X49003).
terminal(X49003) :- line(o, X49003), tdom(X49003).
terminal(X49003) :- not open(X49003), tdom(X49003).
succ(1, 2).
succ(2, 3).
line(X48999, X49035) :- true(cell(X49005, X49006, X48999), X49035), true(cell(X49005, X49014, X48999), X49035), true(cell(X49005, X49022, X48999), X49035), succ(X49006, X49014), succ(X49014, X49022), domdomain(10, X49014), domdomain(11, X49022), domdomain(10, X49006), domdomain(11, X49014), domdomain(4, X49022), domdomain(4, X49014), domdomain(4, X49005), domdomain(4, X49006), tdom(X49035), domdomain(1, X48999).
line(X48999, X49035) :- true(cell(X49005, X49006, X48999), X49035), true(cell(X49013, X49006, X48999), X49035), true(cell(X49021, X49006, X48999), X49035), succ(X49005, X49013), succ(X49013, X49021), domdomain(10, X49013), domdomain(11, X49021), domdomain(10, X49005), domdomain(11, X49013), domdomain(4, X49021), domdomain(4, X49013), domdomain(4, X49005), domdomain(4, X49006), tdom(X49035), domdomain(1, X48999).
line(X48999, X49045) :- true(cell(X49005, X49006, X48999), X49045), true(cell(X49013, X49014, X48999), X49045), true(cell(X49021, X49022, X48999), X49045), succ(X49005, X49013), succ(X49013, X49021), succ(X49006, X49014), succ(X49014, X49022), domdomain(10, X49014), domdomain(11, X49022), domdomain(10, X49006), domdomain(11, X49014), domdomain(10, X49013), domdomain(11, X49021), domdomain(10, X49005), domdomain(11, X49013), domdomain(4, X49021), domdomain(4, X49022), domdomain(4, X49013), domdomain(4, X49014), domdomain(4, X49005), domdomain(4, X49006), tdom(X49045), domdomain(1, X48999).
line(X48998, X49044) :- true(cell(X49004, X49005, X48998), X49044), true(cell(X49012, X49013, X48998), X49044), true(cell(X49020, X49021, X48998), X49044), succ(X49020, X49012), succ(X49012, X49004), succ(X49005, X49013), succ(X49013, X49021), domdomain(10, X49013), domdomain(11, X49021), domdomain(10, X49005), domdomain(11, X49013), domdomain(10, X49012), domdomain(11, X49004), domdomain(10, X49020), domdomain(11, X49012), domdomain(4, X49020), domdomain(4, X49021), domdomain(4, X49012), domdomain(4, X49013), domdomain(4, X49004), domdomain(4, X49005), tdom(X49044), domdomain(1, X48998).
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
domdomain(5, random).
domdomain(5, xplayer).
domdomain(6, oplayer).
domdomain(6, xplayer).
domdomain(7, 0).
domdomain(7, 50).
domdomain(7, 100).
domdomain(8, control).
domdomain(9, act).
domdomain(9, mark).
domdomain(9, noop).
domdomain(10, 1).
domdomain(10, 2).
domdomain(11, 2).
domdomain(11, 3).
