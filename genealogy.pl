% Eltern
parent(adam, john).
parent(eve, john).
parent(eve, lisa).
parent(john, anne).
parent(john, pat).
parent(pat, jacob).
parent(carol, jacob).

% Geschlechter
male(adam).
male(john).
male(pat).
male(jacob).

female(eve).
female(lisa).
female(anne).
female(carol).

% Regeln für Mutter und Vater
mother(Mother, Child) :- female(Mother), parent(Mother, Child).
father(Father, Child) :- male(Father), parent(Father, Child).

% Regel für Großeltern
grandparent(GP, GC) :- parent(GP, P), parent(P, GC).

% Regeln für Großmutter und Großvater
grandmother(GM, GC) :- female(GM), grandparent(GM, GC).
grandfather(GF, GC) :- male(GF), grandparent(GF, GC).
