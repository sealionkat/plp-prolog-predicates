:- consult("helpers.pl").

artgh(X, 0, Ans) :-
	Ans = X.

artgh(X, N, Ans) :-
	Nx is N - 1,
	Nbottom is 2 * N + 1,
	pow(X, Nbottom, Powans),
	artgh(X, Nx, Ansx),
	Ans = Ansx + (Powans / Nbottom).

