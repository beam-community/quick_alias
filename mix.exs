defmodule QuickAlias.Mixfile do
  use Mix.Project

  def project do
    [app: :quick_alias,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     package: package]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    []
  end

  defp package do
    [
      licenses: ["MIT"],
      maintainers: ["Blake Williams", "George Brocklehurst"],
      links: %{
        "GitHub" => "https://github.com/thoughtbot/quick_alias"
      },
      description: "Quick aliases for .iex.exs",
    ]
  end
end
