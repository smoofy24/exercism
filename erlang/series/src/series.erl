-module(series).

-export([slices/2]).


slices(_SliceLength, _Series) ->
    Z = string:len(_Series),
    if Z > _SliceLength ->
        string:slice(_Series,0,_SliceLength);
        slices(_SliceLength, string:slice(_Series,1);
    if Z <= _SliceLength ->
        _Series
    end.
