defmodule Busao.State do

  @doc "start state"
  def start_link(name) do
    Agent.start_link(fn -> [] end, name: name)
  end

  @doc "get state"
  def get(agent) do
    Agent.get(agent, fn(n) -> n end)
  end

  @doc "put in state"
  def put(agent, value) do
    Agent.update(agent, &Enum.into(&1, value))
  end
end
