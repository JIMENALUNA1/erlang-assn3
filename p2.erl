%% team: Jimena Rivera, Grace Odondi, Destiny okonwo

-module(p2).
-export([main/0]).

main() ->
  loop().

loop() ->
  {ok, X} = io:read("Enter a number: "),
  case handle(X) of
    stop -> ok;
    cont -> loop()
  end.

handle(X) when not is_integer(X) ->
  io:format("not an integer~n"),
  cont;

handle(X) when X < 0 ->
  Abs = abs(X),
  Val = trunc(math:pow(Abs, 7)),
  io:format("~p~n", [Val]),
  cont;

handle(0) ->
  io:format("0~n"),
  stop;

handle(X) when X > 0 ->
  case X rem 7 of
    0 ->
      Root5 = math:pow(X, 1/5),
      io:format("~p~n", [Root5]);
    _ ->
      io:format("~p~n", [fact(X)])
  end,
  cont.

fact(0) -> 1;
fact(N) when N > 0 ->
  fact_tail(N, 1).

fact_tail(0, Acc) -> Acc;
fact_tail(N, Acc) when N > 0 ->
  fact_tail(N - 1, N * Acc).
