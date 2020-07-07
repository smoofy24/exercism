-module(queen_attack).

-export([can_attack/2]).


can_attack(_WhiteQueen, _BlackQueen) ->
    %%
    %% Grab the values from the input
    %%
    {X1, Y1} = _WhiteQueen, 
    {X2, Y2} = _BlackQueen,

    %%
    %% Diagonality check
    %% Two pieces are on the diagonal when difference between row numbers and column numbers is the same
    %%
    D = abs(X2 - X1) - abs(Y2 - Y1), 

    if 
        X1 == X2 ->
            true;
        Y1 == Y2 ->
            true;
        D  == 0  ->
            true;
        true ->
            false
    end.
    
