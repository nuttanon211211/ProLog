append2([],List,List).
append2([H|T],List2,[H|Result]) :-
	append2(T,List2,Result).
	
	
append3(X,Y,Z,Ans) :-
	append2(X,Y,Temp),
	append2(Temp,Z,Ans).
