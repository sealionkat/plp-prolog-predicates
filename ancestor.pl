:- discontiguous is_child/2.
:- discontiguous is_parent/2.

is_child(jan, kacper).
is_parent(mateusz, kacper).
is_parent(michal, mateusz).
is_parent(filip, michal).
is_child(filip, karol).
is_child(adam, michal).

is_parent(A, B) :-
	is_child(B, A).

ancestor(A, B) :-
	is_parent(A, B).

ancestor(A, B) :-
	is_parent(A, X),
	ancestor(X, B).
