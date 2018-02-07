defmodule StreamdataDemoTest do
  use ExUnit.Case
  use ExUnitProperties

  property "Find biggest number in list" do
    check all list <- nonempty(list_of(integer())) do
      list |> IO.inspect(label: "GENERATED LIST", charlists: :as_list, width: 1000)
      assert StreamdataDemo.biggest(list) == list |> Enum.sort() |> List.last()
    end
  end

  #  test "find biggest number in list" do
  #    assert StreamdataDemo.biggest([3, 2, 1]) == 3
  #    assert StreamdataDemo.biggest([3]) == 3
  #    assert StreamdataDemo.biggest([-2, -3, -4, 0]) == 0
  #    assert StreamdataDemo.biggest([-2, -3, -4, 0, 4]) == 4
  #    assert StreamdataDemo.biggest([3, 1, 2, 3]) == 3
  #  end
end
