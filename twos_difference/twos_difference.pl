%twos_difference([1, 2, 3, 4], Actual)
%!  twos_difference(+Input, -Differences) is det.
twos_difference(Input, Differences) :-
    findall((X,Y), (member(X, Input), member(Y, Input), X < Y, Y - X =:= 2), Differences).
