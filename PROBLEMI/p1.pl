% Scrivere un predicato prod(L,P) che significa «P è il
% prodotto degli elementi della lista di interi dati da L».
% Deve essere in grado di generare la P e anche di testare
% una data P.
prod([],1).


prod([L1|L], P) :-
  prod(L,P1),
  P is L1*P1.