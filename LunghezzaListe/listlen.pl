% Definizione base: la lunghezza di una lista vuota è 0.
lunghezza([], 0).

% Regola ricorsiva: la lunghezza di una lista non vuota è 1 più la lunghezza del resto della lista.
lunghezza([_|Coda], N) :-
    lunghezza(Coda, N1),
    N is N1 + 1.
