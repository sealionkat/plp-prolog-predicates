:- consult("helpers.pl").

arsinh(X, 0, Ans) :-
	Ans = X.

arsinh(X, N, Ans) :-
	Nx is N - 1,
	Nd is 2 * N,
	Npo is 2 * N + 1,
	fac(Nd, Facnd),
	pow(-1, N, Mopow),
	Top is Mopow * Facnd,
	pow(X, Npo, Topans),
	fac(N, Facans),
	pow(4, N, Fourpow),
	Bottom is Fourpow * (Facans ** 2) * (2 * N + 1),
	arsinh(X, Nx, Ansx),
	Ans = Ansx + (Top * Topans / Bottom).
