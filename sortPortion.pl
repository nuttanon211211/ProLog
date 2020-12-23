list_length([],0).
list_length([_|A], B) :-
	list_length(A, C),
	B is C + 1.

get_list(T,P1,0,[],T):-P1<0,!.
get_list([H|T],P1,P2,[H|Ans1],Ans):-P1<0,AP2 is P2-1,get_list(T,P1,AP2,Ans1,Ans),!.
get_list([H|T],0,P2,Ans1,Ans3):-AP2 is P2-1,get_list(T,-1,AP2,Ans1,Ans),
	sort([H|Ans1],Ans2),mix_list(Ans2,Ans,Ans3),!.
get_list([H|T],P1,P2,Ans1,[H|Ans]):-AP1 is P1-1,AP2 is P2-1,get_list(T,AP1,AP2,Ans1,Ans),!.

mix_list([] ,T ,T).
mix_list([H|T] ,L2 , [H|Ret]) :- mix_list(T,L2,Ret).


sortPortion([],_,_,[]) :- !.
sortPortion(List,P1,P2,List) :- P1<0,P2<0;P1>=0,P2<0;P1<0,P2>=0,!.
sortPortion(List,P1,P2,List) :- list_length(List,L), ( P1>=L,P2>=L;P1>=L,P2<L;P1<L,P2>=L),!.
sortPortion(List,P1,P2,Ans) :- P1>P2,get_list(List,P2,P1+1,_,Ans),!.
sortPortion(List,P1,P2,Ans) :- get_list(List,P1,P2+1,_,Ans),!.


