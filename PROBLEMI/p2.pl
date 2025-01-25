% Scrivi un predicato pescalar(L1,L2,P) che
% significa “P è il prodotto scalare dei vettori L1 e
% L2” dove i vettori sono rappresentati come liste
% di interi. Il predicato fallisce quando i due
% vettori hanno lunghezze differenti.

pescalar([],[],0).

pescalar([H1|L1],[H2|L2],P) :-
  pescalar(L1,L2,P1),
  P is P1 + H1*H2.
