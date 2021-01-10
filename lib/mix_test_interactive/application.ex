defmodule MixTestInteractive.Application do
  @moduledoc false

  use Application

  @impl Application
  def start(_type, _args) do
    children = []

    opts = [strategy: :one_for_one, name: MixTestInteractive.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
