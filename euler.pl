:- consult("helpers.pl").

euler(_, 0, Ans) :-
	Ans = 1.

euler(X, 1, Ans) :-
	Ans = 1 + X.

euler(X, N, Ans) :-
	pow(X, N, Topx),
	fac(N, Bottomx),
	Nx is N - 1,
	euler(X, Nx, Ansx),
	Ans = Ansx + (Topx / Bottomx).
