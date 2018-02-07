prop_biggest() ->
    ?FORALL(List, non_empty(list(integer())),
        begin
            biggest(List) =:= lists:last(lists:sort(List))
        end).
