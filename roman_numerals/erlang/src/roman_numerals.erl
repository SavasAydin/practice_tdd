-module(roman_numerals).
-export([convert/1]).

convert(0) ->
    "";
convert(N) when N < 5000 ->
    L = get_lower_limit(N),
    RE = roman_expression_of(L),
    RE ++ convert(N-L).

get_lower_limit(N) ->
    Limits = all_low_limits(),
    [Infimum|_] = lists:reverse(lists:filter(fun(L) -> N >= L end, Limits)),
    Infimum.

roman_expression_of(N) ->
    proplists:get_value(N, roman_numerals()).

all_low_limits() ->
    [1,4,5,9,10,40,50,90,100,500,900,1000].

roman_numerals() ->
    [{1, "I"},
     {4, "IV"},
     {5, "V"},
     {9, "IX"},
     {10, "X"},
     {40, "XL"},
     {50, "L"},
     {90, "XC"},
     {100, "C"},
     {500, "D"},
     {900, "CM"},
     {1000, "M"}].
