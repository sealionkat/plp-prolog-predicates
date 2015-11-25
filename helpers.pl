pow(_, 0, Ans) :-
	Ans = 1.

pow(X, 1, Ans) :-
	Ans = X.

pow(X, N, Ans) :-
	Nx is N - 1,
	pow(X, Nx, Ansx),
	Ans = X * Ansx.

fac(0, Ans) :-
	Ans is 1.

fac(1, Ans) :-
	Ans is 1.

fac(X, Ans) :-
	Xn is X - 1,
	fac(Xn, Ansx),
	Ans is X * Ansx.
