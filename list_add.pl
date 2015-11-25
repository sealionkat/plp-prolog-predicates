list_add(List, Ans) :-
	length(List, Len),
	Len == 0,
	Ans = 0.

list_add(List, Ans) :-
	[Head|Tail] = List,
	list_add(Tail, Ansx),
	Ans = Head + Ansx.
