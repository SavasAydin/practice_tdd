-module(bowling_game_tests).
-include_lib("eunit/include/eunit.hrl").

zero_pin_per_roll_game_test() ->
    Rolls = lists:duplicate(20, 0),
    Res = bowling_game:score(Rolls),
    ?assertEqual(0, Res).

one_pin_per_roll_game_test() ->
    Rolls = lists:duplicate(20, 1),
    Res = bowling_game:score(Rolls),
    ?assertEqual(20, Res).

one_spare_game_test() ->
    Rolls = [1, 9, 1 | lists:duplicate(17, 0)],
    Res = bowling_game:score(Rolls),
    ?assertEqual(12, Res).

one_strike_game_test() ->
    Rolls = [10, 1, 1 | lists:duplicate(17, 0)],
    Res = bowling_game:score(Rolls),
    ?assertEqual(14, Res).

space_in_the_last_frame_test() ->
    Rolls = lists:duplicate(18, 0) ++ [5, 5, 5],
    Res = bowling_game:score(Rolls),
    ?assertEqual(15, Res).

perfect_game_test() ->
    Rolls = lists:duplicate(12, 10),
    Res = bowling_game:score(Rolls),
    ?assertEqual(300, Res).

spare_game_test() ->
    Spare = [5, 5],
    Rolls = lists:flatten(lists:duplicate(10, Spare)) ++ [5],
    Res = bowling_game:score(Rolls),
    ?assertEqual(150, Res).
