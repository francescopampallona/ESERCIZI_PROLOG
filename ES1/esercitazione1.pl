%swipl
%['esercitazione1.pl'].

% Definizioni dei fatti
gatto(frufru).
dalmata(felix).

%Definizioni di regole
cane(X) :- dalmata(X).
animale(X) :- cane(X).
animale(X) :- gatto(X).
mortale(X) :- animale(X).

