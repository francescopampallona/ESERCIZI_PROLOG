% Definisce chi è il padre di chi
padre(pietro, marco).
padre(pietro, lisa).
padre(gianni, sofia).
padre(marco, giulia).

% Definisce chi è la madre di chi
madre(laura, marco).
madre(laura, lisa).
madre(lisa, sofia).
madre(sofia, giulia).

% Trova i nonni paterni
nonnoPaterno(Nonno, Nipote) :-
    padre(Nonno, Genitore),padre(Genitore, Nipote).

%Trova le nonne paterne
nonnaPaterna(Nonna, Nipote) :-
    madre(Nonna, Genitore),padre(Genitore, Nipote).

%Trova i nonni materni
nonnoMaterno(Nonno, Nipote) :-
    padre(Nonno, Genitore),madre(Genitore, Nipote).

%Trova le nonne materne
nonnaMaterna(Nonna, Nipote) :- 
    madre(Nonna, Genitore), padre(Genitore, Nipote).