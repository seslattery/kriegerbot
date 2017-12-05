defmodule Kreigerbot.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    #import Supervisor
    # list all child processes to be supervised
    children = [
      # Starts a worker by calling: Kreigerbot.Worker.start_link(arg)
      {Kreigerbot.Robot, []}

    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Kreigerbot.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
