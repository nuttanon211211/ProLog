insertionSort([H|List] , Result) :-
		insertionSort(List, Temp ),
		printlist(Temp),
		insertItem(H, Temp, Result).

insertionSort([],[]).

insertItem(X, [H|List], [H|Result]) :-
		H < X, !,
		insertItem(X, List, Result).

insertItem(X, List, [X|List]).

printlist([]) :- nl.
printlist([X|List]) :-1
		write(X) , write(' '),
		printlist(List).

% Goal: insertionSort([2,4,1,3,5,9,6],L).
