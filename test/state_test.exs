defmodule BusaoTest.State do
  use ExUnit.Case, async: true

  setup context do
    {:ok, state} = Busao.State.start_link(context.test)
    {:ok, state: state}
  end

  test "get and put state", %{state: state} do
    assert Busao.State.get(state) == []
    Busao.State.put(state, ["test"])
    Busao.State.put(state, ["test2"])
    assert Busao.State.get(state) == ["test2", "test"]
  end
end
