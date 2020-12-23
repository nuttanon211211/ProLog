
equal2(X,X).

append2([],List,List).
append2([H|T],List2,[H|Result]) :-
	append2(T,List2,Result).
	
	
append3(X,Y,Z,Ans) :-
	append2(X,Y,Temp),
	append2(Temp,Z,Ans).

list_length([],0).
list_length([_|A], B) :-
	list_length(A, C),
	B is C + 1.

bubble_sort(List,Sorted):-b_sort(List,[],Sorted).
b_sort([],Acc,Acc).
b_sort([H|T],Acc,Sorted):-bubble(H,T,NT,Max),b_sort(NT,[Max|Acc],Sorted).
   
bubble(X,[],[],X).
bubble(X,[Y|T],[Y|NT],Max):-X>Y,bubble(X,T,NT,Max).
bubble(X,[Y|T],[X|NT],Max):-X=<Y,bubble(Y,T,NT,Max).
	

% sortPortion(List,P1,P2,Result) :- 
%	append(X,Y,Z,Result),
%	equal2(X,[1]) ,
%	equal2(Y,[2]) ,
%	equal2(Z,[3]).

sortPortion([],_,_,[]).
sortPortion(List,P1,P2,List) :- P1<0,P2<0;P1>=0,P2<0;P1<0,P2>=0.
sortPortion(List,P1,P2,List) :- list_length(List,L), ( P1>=L,P2>=L;P1>=L,P2<L;P1<L,P2>=L).
sortPortion(List,0,P2,Result) :-
	list_length(List,L),
	bubble_sort(X,sX), sX is rX,Y is rY),
	append2(X,Y,List),append2(rX,rY,Result),
	list_length(Y,L-P2-1), list_length(rY,L-P2-1),
	list_length(X,P2+1), list_length(rX,P2+1).
	
	
	

	
% sortPortion(List,P1,_,List) :- P1<0.
% sortPortion(List,_,P2,List) :- P2<0.

test(Result) :- 
	append3(X,Y,Z,Result),
	equal2(X,[1]) ,
	equal2(Y,[2]) ,
	equal2(Z,[3]).
