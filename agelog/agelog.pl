% Regola per definire l'età minima per essere considerati adulti.
eta_minima_adulto(18).

% Regola per verificare se una persona è adulta.
% Assumiamo che 'Persona' sia un fatto definito con un'età associata.
adulto(Persone) :-
    eta_persona(Persone, Eta),
    eta_minima_adulto(EtaMinima),
    Eta >= EtaMinima.

% Fatti di esempio che definiscono l'età di alcune persone.
eta_persona(mario, 20).
eta_persona(luigi, 17).
eta_persona(giulia, 18).
eta_persona(anna, 16).
