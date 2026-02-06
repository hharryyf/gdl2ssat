mtdom(1..100).
role(xplayer).
role(oplayer).
role(random).
base(round(0)).
base(round(X41060)) :- succ(X41064, X41060), domdomain(13, X41064), domdomain(14, X41060), domdomain(8, X41060).
base(heap(X41060, 0)) :- pile(X41060), domdomain(1, X41060), domdomain(7, X41060).
base(heap(X41060, X41061)) :- pile(X41060), succ(X41060, X41061), domdomain(13, X41060), domdomain(14, X41061), domdomain(1, X41060), domdomain(7, X41060), domdomain(8, X41061).
base(control(xplayer)).
base(control(oplayer)).
base(phase(random)).
base(phase(player)).
input(xplayer, reduce(X41061, 1)) :- pile(X41061), domdomain(1, X41061), domdomain(7, X41061).
input(xplayer, reduce(X41061, 2)) :- pile(X41061), domdomain(1, X41061), domdomain(7, X41061).
input(oplayer, reduce(X41061, 1)) :- pile(X41061), domdomain(1, X41061), domdomain(7, X41061).
input(oplayer, reduce(X41061, 2)) :- pile(X41061), domdomain(1, X41061), domdomain(7, X41061).
input(random, add(X41061, 1)) :- pile(X41061), domdomain(1, X41061).
input(X41058, noop) :- role(X41058), domdomain(5, X41058).
true(heap(X41060, X41061), 1) :- height(X41060, X41061), domdomain(1, X41060), domdomain(9, X41061), domdomain(7, X41060), domdomain(8, X41061).
true(control(xplayer), 1).
true(phase(player), 1).
true(round(0), 1).
legal(xplayer, noop, X41067) :- true(control(oplayer), X41067), tdom(X41067).
legal(xplayer, noop, X41067) :- true(phase(random), X41067), tdom(X41067).
legal(oplayer, noop, X41067) :- true(control(xplayer), X41067), tdom(X41067).
legal(oplayer, noop, X41067) :- true(phase(random), X41067), tdom(X41067).
legal(X41058, noop, X41076) :- true(control(X41065), X41076), role(X41058), X41065 != X41058, domdomain(4, X41065), tdom(X41076), domdomain(5, X41058).
legal(random, add(X41061, 1), X41070) :- true(phase(random), X41070), tdom(X41070), domdomain(1, X41061).
legal(random, noop, X41061) :- tdom(X41061).
legal(X41058, reduce(X41061, 1), X41088) :- true(heap(X41061, X41069), X41088), true(control(X41058), X41088), true(phase(player), X41088), small(0, X41069), domdomain(14, X41069), domdomain(4, X41058), domdomain(8, X41069), tdom(X41088), domdomain(5, X41058), domdomain(7, X41061).
legal(X41058, reduce(X41061, 2), X41088) :- true(heap(X41061, X41069), X41088), true(control(X41058), X41088), true(phase(player), X41088), small(1, X41069), domdomain(14, X41069), domdomain(4, X41058), domdomain(8, X41069), tdom(X41088), domdomain(5, X41058), domdomain(7, X41061).
true(round(X41060), X41074 + 1) :- true(round(X41060), X41074), true(phase(player), X41074), mtdom(X41074), domdomain(8, X41060).
true(round(X41060), X41085 + 1) :- true(round(X41066), X41085), true(phase(random), X41085), true(control(oplayer), X41085), succ(X41066, X41060), domdomain(13, X41066), domdomain(14, X41060), domdomain(8, X41066), mtdom(X41085), domdomain(8, X41060).
true(phase(player), X41068 + 1) :- true(phase(random), X41068), mtdom(X41068).
true(phase(random), X41068 + 1) :- true(phase(player), X41068), mtdom(X41068).
true(control(X41060), X41074 + 1) :- true(control(X41060), X41074), true(phase(player), X41074), mtdom(X41074), domdomain(4, X41060).
true(control(X41060), X41079 + 1) :- true(control(X41066), X41079), true(phase(random), X41079), nextXplayer(X41066, X41060), domdomain(4, X41066), mtdom(X41079), domdomain(4, X41060).
true(heap(X41060, X41061), X41083 + 1) :- does(X41065, reduce(X41060, 1), X41083), true(heap(X41060, X41076), X41083), succ(X41061, X41076), domdomain(13, X41061), domdomain(14, X41076), domdomain(8, X41076), domdomain(5, X41065), mtdom(X41083), domdomain(7, X41060), domdomain(8, X41061).
true(heap(X41060, X41061), X41088 + 1) :- does(X41065, reduce(X41060, 2), X41088), true(heap(X41060, X41076), X41088), succ(X41061, X41081), succ(X41081, X41076), domdomain(13, X41081), domdomain(14, X41076), domdomain(13, X41061), domdomain(14, X41081), domdomain(8, X41076), domdomain(5, X41065), mtdom(X41088), domdomain(7, X41060), domdomain(8, X41061).
true(heap(X41060, X41061), X41083 + 1) :- does(random, add(X41060, 1), X41083), true(heap(X41060, X41076), X41083), succ(X41076, X41061), domdomain(13, X41076), domdomain(14, X41061), domdomain(8, X41076), domdomain(1, X41060), mtdom(X41083), domdomain(7, X41060), domdomain(8, X41061).
true(heap(X41060, X41061), X41083 + 1) :- does(random, add(X41068, 1), X41083), true(heap(X41060, X41061), X41083), X41060 != X41068, domdomain(1, X41068), mtdom(X41083), domdomain(7, X41060), domdomain(8, X41061).
true(heap(X41060, X41061), X41081 + 1) :- does(random, noop, X41081), true(phase(random), X41081), true(heap(X41060, X41061), X41081), mtdom(X41081), domdomain(7, X41060), domdomain(8, X41061).
true(heap(X41060, X41061), X41083 + 1) :- does(X41065, reduce(X41068, X41069), X41083), true(heap(X41060, X41061), X41083), X41060 != X41068, domdomain(5, X41065), domdomain(7, X41068), domdomain(12, X41069), mtdom(X41083), domdomain(7, X41060), domdomain(8, X41061).
open(X41070) :- true(heap(X41062, X41063), X41070), small(0, X41063), domdomain(14, X41063), domdomain(7, X41062), domdomain(8, X41063), tdom(X41070).
terminal(X41062) :- not open(X41062), tdom(X41062).
goal(X41058, 100, X41067) :- true(control(X41058), X41067), tdom(X41067), domdomain(4, X41058).
goal(X41058, 0, X41072) :- true(control(X41065), X41072), nextXplayer(X41058, X41065), domdomain(4, X41065), tdom(X41072), domdomain(4, X41058).
nextXplayer(xplayer, oplayer).
nextXplayer(oplayer, xplayer).
pile(a).
terminal(X41064) :- true(round(25), X41064), tdom(X41064).
height(a, 25).
small(X41058, X41059) :- succ(X41058, X41064), small(X41064, X41059), domdomain(13, X41064), domdomain(14, X41064), domdomain(13, X41058), domdomain(14, X41059).
small(X41058, X41059) :- succ(X41058, X41059), domdomain(13, X41058), domdomain(14, X41059).
succ(0, 1).
succ(1, 2).
succ(2, 3).
succ(3, 4).
succ(4, 5).
succ(5, 6).
succ(6, 7).
succ(7, 8).
succ(8, 9).
succ(9, 10).
succ(10, 11).
succ(11, 12).
succ(12, 13).
succ(13, 14).
succ(14, 15).
succ(15, 16).
succ(16, 17).
succ(17, 18).
succ(18, 19).
succ(19, 20).
succ(20, 21).
succ(21, 22).
succ(22, 23).
succ(23, 24).
succ(24, 25).
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
domdomain(7, 7).
domdomain(7, 8).
domdomain(7, 9).
domdomain(7, 10).
domdomain(7, 11).
domdomain(7, 12).
domdomain(7, 13).
domdomain(7, 14).
domdomain(7, 15).
domdomain(7, 16).
domdomain(7, 17).
domdomain(7, 18).
domdomain(7, 19).
domdomain(7, 20).
domdomain(7, 21).
domdomain(7, 22).
domdomain(7, 23).
domdomain(7, 24).
domdomain(7, a).
domdomain(8, 0).
domdomain(8, 1).
domdomain(8, 2).
domdomain(8, 3).
domdomain(8, 4).
domdomain(8, 5).
domdomain(8, 6).
domdomain(8, 7).
domdomain(8, 8).
domdomain(8, 9).
domdomain(8, 10).
domdomain(8, 11).
domdomain(8, 12).
domdomain(8, 13).
domdomain(8, 14).
domdomain(8, 15).
domdomain(8, 16).
domdomain(8, 17).
domdomain(8, 18).
domdomain(8, 19).
domdomain(8, 20).
domdomain(8, 21).
domdomain(8, 22).
domdomain(8, 23).
domdomain(8, 24).
domdomain(8, 25).
domdomain(9, 25).
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
domdomain(13, 7).
domdomain(13, 8).
domdomain(13, 9).
domdomain(13, 10).
domdomain(13, 11).
domdomain(13, 12).
domdomain(13, 13).
domdomain(13, 14).
domdomain(13, 15).
domdomain(13, 16).
domdomain(13, 17).
domdomain(13, 18).
domdomain(13, 19).
domdomain(13, 20).
domdomain(13, 21).
domdomain(13, 22).
domdomain(13, 23).
domdomain(13, 24).
domdomain(14, 1).
domdomain(14, 2).
domdomain(14, 3).
domdomain(14, 4).
domdomain(14, 5).
domdomain(14, 6).
domdomain(14, 7).
domdomain(14, 8).
domdomain(14, 9).
domdomain(14, 10).
domdomain(14, 11).
domdomain(14, 12).
domdomain(14, 13).
domdomain(14, 14).
domdomain(14, 15).
domdomain(14, 16).
domdomain(14, 17).
domdomain(14, 18).
domdomain(14, 19).
domdomain(14, 20).
domdomain(14, 21).
domdomain(14, 22).
domdomain(14, 23).
domdomain(14, 24).
domdomain(14, 25).
