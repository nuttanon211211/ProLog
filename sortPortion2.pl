

list_length([],0).
list_length([_|A], B) :-
	list_length(A, C),
	B is C + 1.
	


sortPortion([],_,_,_).
sortPortion([A,B|T],P1,P2,Result) :- 
	list_length(Result,len).
	((A=<B,P1=<len,P2>len);(P1>len;P2=<len)),
	sortPortion([B|T],P1,P2,[A|Result]).

