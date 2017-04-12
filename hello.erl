-module(hello).
-export([start/1]).
-export([growdown/0]).

start(V) ->
  % {ok, S} = file:open("top.txt", write),
  % io:format(S, "JX ~w JS.~n", V),
  % file:close(S).
  file:write_file("plot.txt", io_lib:fwrite("~s\n", V)).

growdown() ->
  My = ["yu","kjds"],
  RevList = lists:reverse(My),
  LastItem = lists:last(My),
  io:format("~s~s.~n", My),
  MyFunc = fun(Item) -> Item == "yu" end,
  IsPresent = lists:any(MyFunc, RevList),
  io:format("Pres, ~p.~n", [IsPresent]),
  lists:map(fun(Item) -> io:format("It: ~s.~n", [Item]) end, My),
  io:format("Last Item: ~s.~n", [LastItem]).
