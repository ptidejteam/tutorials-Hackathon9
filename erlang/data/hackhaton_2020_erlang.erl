-module(hackhaton_2020_erlang).
-export([main/0]).
-record(dude, {
    name,
    age
}). % Same as struct in C


main() ->
    io:format("~n~n----- Hackathon 04/2020 - Equality is hard ----- ~n~n"),
    io:fwrite("~p~p~n",["1 == 1 ->",1 == 1]),
    io:fwrite("~p~p~n",["1 =:= 1 ->",1 =:= 1]),
    io:fwrite("~p~p~n",["1 == 1.0 ->",1 == 1.0]),
    io:fwrite("~p~p~n~n",["1 == 1.0 ->",1 =:= 1.0]),

    io:fwrite("~p~p~n",["Ole == Ole ->","Ole" == "Ole"]),
    io:fwrite("~p~p~n~n",["Ole =:= Ole ->","Ole" =:= "Ole"]),
    
    io:fwrite("~p~p~n",["[1,2,3] == [1,2,3] ->",[1,2,3] == [1,2,3]]),
    io:fwrite("~p~p~n",["[1,2,3] =:= [1,2,3] ->",[1,2,3] =:= [1,2,3]]),
    io:fwrite("~p~p~n",["[1.0,2,3] == [1,2,3.0] ->",[1.0,2,3] == [1,2,3.0]]),
    io:fwrite("~p~p~n~n",["[1.0,2,3] =:= [1,2,3.0] ->",[1.0,2,3] =:= [1,2,3.0]]),

    io:fwrite("~p~p~n",["{'Joe', 1, ok} == {'Joe', 1, ok}", {"Joe", 1, ok} == {"Joe", 1, ok}]),
    io:fwrite("~p~p~n~n",["{'Joe', 1.0, ok} =:= {'Joe', 1, ok}", {"Joe", 1.0, ok} =:= {"Joe", 1, ok}]),

    io:fwrite("~p~p~n",["#{'age'=> 20} == #{'age'=> 20}", #{"age"=> 20} == #{"age"=> 20}]),
    io:fwrite("~p~p~n",["#{'abcd'=> 20} == #{'age'=> 20}", #{"abcd"=> 20} == #{"age"=> 20}]),
    io:fwrite("~p~p~n~n",["#{'age'=> 20} =:= #{'age'=> 20.0}", #{"age"=> 20} =:= #{"age"=> 20.0}]),
    
    JOE = #dude{name="Joe", age=20},
    BEN = #dude{name="Ben", age=20},
    io:fwrite("~p~p~n",["#dude{name='Joe', age=20} == #dude{name='Joe', age=20}", #dude{name="Joe", age=20} == #dude{name="Joe", age=20}]),
    io:fwrite("~p~p~n",["joe == joe", JOE == JOE]),
    io:fwrite("~p~p~n",["joe == ben", JOE == BEN]),
    io:fwrite("~p~p~n",["joe == ben", JOE =:= BEN]),
    io:fwrite("~p~p~n~n",["joe =:= #dude{name='Joe', age=20}", JOE =:=  #dude{name="Joe", age=20.0}]),

    Fun2 = fun() -> 10 end,
    Fun = fun() -> 10 end,
    FunBkp = Fun,

    io:fwrite("~p~p~n",["Fun == Fun", Fun == Fun]),
    io:fwrite("~p~p~n",["Fun =:= Fun", Fun =:= Fun]),
    io:fwrite("~p~p~n",["Fun == FunBkp", Fun == FunBkp]),
    io:fwrite("~p~p~n~n",["Fun2 == Fun", Fun2 == Fun]).

