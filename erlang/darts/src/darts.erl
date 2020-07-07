-module(darts).

-export([score/2]).

score(X, Y) -> 
    Z = math:sqrt(math:pow(X,2)+math:pow(Y,2)),
    if
        Z > 10 ->
            0;
        Z > 5 ->
            1;
        Z > 1 ->
            5;
        true ->
            10
    end.
