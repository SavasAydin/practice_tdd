-module(bowling_game).
-export([score/1]).

-define(SPARE, 10).
-define(STRIKE, 10).
-define(LAST_FRAME, 10).

score(Rolls) ->
    score(Rolls, 1).

score(Rolls, ?LAST_FRAME) ->
    lists:sum(Rolls);
score([X, Y | Rolls], Frame) when X + Y == ?SPARE ->
    10 + hd(Rolls) + score(Rolls, Frame+1);
score([?STRIKE | Rolls], Frame) ->
    10 + next_two_pins(Rolls) + score(Rolls, Frame+1);
score([X, Y | Rolls], Frame) ->
    X + Y + score(Rolls, Frame+1).

next_two_pins([F, S | _]) ->
    F+S.
