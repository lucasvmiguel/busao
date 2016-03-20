defmodule Busao do
  use Application

  def start(_type, _args) do
    Busao.Supervisor.start_link
  end
end
