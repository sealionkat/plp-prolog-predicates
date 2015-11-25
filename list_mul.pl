list_mul(List, Ans) :-
	length(List, Len),
	Len == 0,
	Ans = 1.

list_mul(List, Ans) :-
	[Head|Tail] = List,
	list_mul(Tail, Ansx),
	Ans = Head * Ansx.

