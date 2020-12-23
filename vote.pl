:- reconsult('voteKB.pl').

save:- 
	tell('voteKB.pl'),
	listing(leader),
	listing(voted),
	listing(vote_count),
	told.
	
start:-
	write('Enter your student ID, followed by a full stop.'),
	nl,
	read(Id),
	check_Id(Id).
	
check_Id(Id):- (Id<1;Id>20),
	write("Wrong Id, type 'start.' again"),
	nl,
	!,false.

check_Id(Id):- \+voted(Id,_),
	write('You have not voted.\nDisplaying menu\nWhich leader do you want to vote for?\n1 Thanathorn\n2 Prayuth\nType a number,1 or 2--'),
	get(N),
	get0(_),
	check_leader(N),
	asserta(voted(Id,N)).
	
check_Id(Id):- voted(Id,_),
	write('You already vote!').

check_leader(N):- leaders(N,Leader),
	vote_count(Leader,X),
	Xp is X+1,
	asserta(vote_count(Leader,Xp)),
	retract(vote_count(Leader,X)).
	
check_leader(N):-
	\+leaders(N,_),
	write('Bad vote.').
	
whowin:-
	vote_count(thanathorn,A),
	vote_count(prayuth,B),
	compare(A,B).
	
compare(A,B) :- A==B,
	write('The vote are equal so far').
compare(A,B):- A>B,
	Ans is A-B,
	write('Thanathorn is winning by '),
	write(Ans),
	write('votes.').
compare(A,B) :- A<B,
	Ans is B-A,
	write('Prayuth is winning by '),
	write(Ans),
	write('votes.').
