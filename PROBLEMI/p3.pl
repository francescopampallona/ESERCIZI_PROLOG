% Rappresentare set con liste non ripetute, scrivere
% predicati per operazioni di unione e intersezione su
% determinati set.

union([],L,L).

union([X|L1],L2,L3) :- member(X, L2), !, union(L1,L2,L3).

union([X|L1], L2, [X|L3]) :- union(L1,L2,L3).

intersection([],L,[]).

intersection([X|L1], L2, [X|L3]):- member(X, L2), !, remove_element(X, L2, NewL2), intersection(L1, NewL2, L3).

intersection([_|L1], L2, L3):- intersection(L1, L2, L3).

% Caso base: rimuovere un elemento da una lista vuota restituisce una lista vuota.
remove_element(_, [], []).

% Caso in cui l'elemento corrente è quello da rimuovere.
remove_element(X, [X|T], NewL2) :-
    remove_element(X, T, NewL2).

% Caso in cui l'elemento corrente non è quello da rimuovere.
remove_element(X, [H|T], [H|NewT]) :-
    X \= H,
    remove_element(X, T, NewT). 