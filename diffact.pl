diffact(_, 0, Y) :-
	Y = 0.

diffact(X, 1, Y) :-
	Y = X.

diffact(X, N, Y) :-
	Nt is N - 1,
	Xt = X - Nt,
	diffact(X, Nt, Yt),
	Y = Yt * Xt.
