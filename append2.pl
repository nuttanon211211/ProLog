append2([],List,List).
append2([H|T],List2,[H|Result]) :-
	append2(T,List2,Result).
