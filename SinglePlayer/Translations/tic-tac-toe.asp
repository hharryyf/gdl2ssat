mtdom(1..9).
role(xplayer).
role(oplayer).
index(1).
index(2).
index(3).
succ(1, 2).
succ(2, 3).
base(cell(X37931, X37932, b)) :- index(X37931), index(X37932), domdomain(2, X37931), domdomain(2, X37932).
base(cell(X37931, X37932, x)) :- index(X37931), index(X37932), domdomain(2, X37931), domdomain(2, X37932).
base(cell(X37931, X37932, o)) :- index(X37931), index(X37932), domdomain(2, X37931), domdomain(2, X37932).
base(control(X37931)) :- role(X37931), domdomain(4, X37931).
input(X37929, mark(X37932, X37933)) :- index(X37932), index(X37933), role(X37929), domdomain(4, X37929), domdomain(2, X37932), domdomain(2, X37933).
input(X37929, noop) :- role(X37929), domdomain(4, X37929).
true(cell(1, 1, b), 1).
true(cell(1, 2, b), 1).
true(cell(1, 3, b), 1).
true(cell(2, 1, b), 1).
true(cell(2, 2, b), 1).
true(cell(2, 3, b), 1).
true(cell(3, 1, b), 1).
true(cell(3, 2, b), 1).
true(cell(3, 3, b), 1).
true(control(xplayer), 1).
true(cell(X37931, X37932, x), X37951 + 1) :- does(xplayer, mark(X37931, X37932), X37951), true(cell(X37931, X37932, b), X37951), mtdom(X37951), domdomain(2, X37931), domdomain(2, X37932).
true(cell(X37931, X37932, o), X37951 + 1) :- does(oplayer, mark(X37931, X37932), X37951), true(cell(X37931, X37932, b), X37951), mtdom(X37951), domdomain(2, X37931), domdomain(2, X37932).
true(cell(X37931, X37932, X37933), X37948 + 1) :- true(cell(X37931, X37932, X37933), X37948), X37933 != b, mtdom(X37948), domdomain(2, X37931), domdomain(2, X37932), domdomain(3, X37933).
true(cell(X37931, X37932, b), X37956 + 1) :- does(X37937, mark(X37940, X37941), X37956), true(cell(X37931, X37932, b), X37956), X37931 != X37940, domdomain(4, X37937), domdomain(2, X37940), domdomain(2, X37941), mtdom(X37956), domdomain(2, X37931), domdomain(2, X37932).
true(cell(X37931, X37932, b), X37956 + 1) :- does(X37937, mark(X37940, X37941), X37956), true(cell(X37931, X37932, b), X37956), X37932 != X37941, domdomain(4, X37937), domdomain(2, X37940), domdomain(2, X37941), mtdom(X37956), domdomain(2, X37931), domdomain(2, X37932).
true(control(xplayer), X37939 + 1) :- true(control(oplayer), X37939), mtdom(X37939).
true(control(oplayer), X37939 + 1) :- true(control(xplayer), X37939), mtdom(X37939).
line(X37929, X37965) :- true(cell(X37935, X37936, X37929), X37965), true(cell(X37935, X37944, X37929), X37965), true(cell(X37935, X37952, X37929), X37965), succ(X37936, X37944), succ(X37944, X37952), domdomain(7, X37944), domdomain(8, X37952), domdomain(7, X37936), domdomain(8, X37944), domdomain(2, X37952), domdomain(2, X37944), domdomain(2, X37935), domdomain(2, X37936), tdom(X37965), domdomain(3, X37929).
line(X37929, X37965) :- true(cell(X37935, X37936, X37929), X37965), true(cell(X37943, X37936, X37929), X37965), true(cell(X37951, X37936, X37929), X37965), succ(X37935, X37943), succ(X37943, X37951), domdomain(7, X37943), domdomain(8, X37951), domdomain(7, X37935), domdomain(8, X37943), domdomain(2, X37951), domdomain(2, X37943), domdomain(2, X37935), domdomain(2, X37936), tdom(X37965), domdomain(3, X37929).
line(X37929, X37975) :- true(cell(X37935, X37936, X37929), X37975), true(cell(X37943, X37944, X37929), X37975), true(cell(X37951, X37952, X37929), X37975), succ(X37935, X37943), succ(X37943, X37951), succ(X37936, X37944), succ(X37944, X37952), domdomain(7, X37944), domdomain(8, X37952), domdomain(7, X37936), domdomain(8, X37944), domdomain(7, X37943), domdomain(8, X37951), domdomain(7, X37935), domdomain(8, X37943), domdomain(2, X37951), domdomain(2, X37952), domdomain(2, X37943), domdomain(2, X37944), domdomain(2, X37935), domdomain(2, X37936), tdom(X37975), domdomain(3, X37929).
line(X37929, X37975) :- true(cell(X37935, X37936, X37929), X37975), true(cell(X37943, X37944, X37929), X37975), true(cell(X37951, X37952, X37929), X37975), succ(X37951, X37943), succ(X37943, X37935), succ(X37936, X37944), succ(X37944, X37952), domdomain(7, X37944), domdomain(8, X37952), domdomain(7, X37936), domdomain(8, X37944), domdomain(7, X37943), domdomain(8, X37935), domdomain(7, X37951), domdomain(8, X37943), domdomain(2, X37951), domdomain(2, X37952), domdomain(2, X37943), domdomain(2, X37944), domdomain(2, X37935), domdomain(2, X37936), tdom(X37975), domdomain(3, X37929).
open(X37937) :- true(cell(X37933, X37934, b), X37937), domdomain(2, X37933), domdomain(2, X37934), tdom(X37937).
legal(X37929, mark(X37932, X37933), X37949) :- true(cell(X37932, X37933, b), X37949), true(control(X37929), X37949), tdom(X37949), domdomain(4, X37929), domdomain(2, X37932), domdomain(2, X37933).
legal(xplayer, noop, X37938) :- true(control(oplayer), X37938), tdom(X37938).
legal(oplayer, noop, X37938) :- true(control(xplayer), X37938), tdom(X37938).
goal(xplayer, 100, X37936) :- line(x, X37936), tdom(X37936).
goal(xplayer, 50, X37948) :- not line(x, X37948), not line(o, X37948), not open(X37948), tdom(X37948).
goal(xplayer, 0, X37936) :- line(o, X37936), tdom(X37936).
goal(oplayer, 100, X37936) :- line(o, X37936), tdom(X37936).
goal(oplayer, 50, X37948) :- not line(x, X37948), not line(o, X37948), not open(X37948), tdom(X37948).
goal(oplayer, 0, X37936) :- line(x, X37936), tdom(X37936).
terminal(X37933) :- line(x, X37933), tdom(X37933).
terminal(X37933) :- line(o, X37933), tdom(X37933).
terminal(X37932) :- not open(X37932), tdom(X37932).
domdomain(1, cell).
domdomain(1, control).
domdomain(2, 1).
domdomain(2, 2).
domdomain(2, 3).
domdomain(3, b).
domdomain(3, o).
domdomain(3, x).
domdomain(4, oplayer).
domdomain(4, xplayer).
domdomain(5, 0).
domdomain(5, 50).
domdomain(5, 100).
domdomain(6, mark).
domdomain(6, noop).
domdomain(7, 1).
domdomain(7, 2).
domdomain(8, 2).
domdomain(8, 3).
