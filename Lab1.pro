•	predicates
parent(symbol,symbol)
female(symbol)
male(symbol)
mother(symbol,symbol)
father(symbol,symbol)
child(symbol,symbol)
grandfather(symbol,symbol)
grandmother(symbol,symbol)
sister(symbol,symbol)
brother(symbol,symbol)
clauses
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
female(pam).
female(liz).
female(ann).
female(pat).
male(tom).
male(bob).
male(jim).
child(Y,X):- parent(X,Y).
mother(X,Y):- parent(X,Y),female(X).
father(X,Y):- parent(X,Y),male(X).
grandfather(X,Z):- parent(X,Y), child (Z,Y), male(X).
grandmother(X,Z):- parent(X,Y), child (Z,Y), female(X).
sister(X,Z) :- parent(Y,Z), parent(Y,X), female(X).
brother(X,Z) :- parent(Y,Z), parent(Y,X), male(X).
goal
grandfather(Grandfather,_).
grandmother(Grandmother, _).
sister(X,Z).
brother(X,Z).

