female(bobalice).
female(betsy).
female(diana).

parent(albert,bob).
parent(albert, betsy).
parent(albert, bill).

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carl).
parent(bob, charlie).

get_grandchild :-
	parent(albert, X),
	parent(X,Y),
	write('Alberts grandchild is '),
	write(Y), nl.

