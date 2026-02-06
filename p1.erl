%% team: Jimena Rivera

-module(p1).
-export([main/0]).

main() ->
  {ok, X} = io:read("Enter a number: "),
  handle(X).

handle(X) when not is_integer(X) ->
  io:format("not an integer~n");

handle(X) when X < 0 ->
  Abs = abs(X),
  Val = trunc(math:pow(Abs, 7)),
  io:format("~p~n", [Val]);

handle(0) ->
  io:format("0~n");

handle(X) when X > 0 ->
  case X rem 7 of
    0 ->
      Root5 = math:pow(X, 1/5),
      io:format("~p~n", [Root5]);
    _ ->
      io:format("~p~n", [fact(X)])
  end.

fact(0) -> 1;
fact(N) when N > 0 ->
  N * fact(N - 1).
