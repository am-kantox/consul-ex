defmodule Consul.Mixfile do
  use Mix.Project

  @app :kantox_consul
  @version "1.2.0"

  def project do
    [
      app: @app,
      version: @version,
      elixir: "~> 1.0",
      name: "Consul API",
      deps: deps(),
      package: package(),
      description: description()
    ]
  end

  def application do
    [
      mod: {Consul, []},
      env: [
        host: "localhost",
        port: 8500
      ]
    ]
  end

  defp deps do
    [
      {:jason, "~> 1.0"},
      {:httpoison, "~> 1.0"},
      {:ex_doc, "~> 0.14", only: :dev}
    ]
  end

  defp description do
    """
    An Elixir client for Consul's HTTP API
    """
  end

  defp package do
    %{
      licenses: ["MIT"],
      maintainers: ["Jamie Winsor", "Aleksei Matiushkin"],
      links: %{"Github" => "https://github.com/am-kantox/consul-ex"}
    }
  end
end
