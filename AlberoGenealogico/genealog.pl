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
nonno(Nonno, Nipote) :-
    padre(Nonno, Genitore),
    (padre(Genitore, Nipote) ; madre(Genitore, Nipote)).

% Trova le nonne materne
nonna(Nonna, Nipote) :-
    madre(Nonna, Genitore),
    (madre(Genitore, Nipote) ; padre(Genitore, Nipote)).
