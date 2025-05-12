defmodule Fab.Word.MixProject do
  use Mix.Project

  def project do
    [
      app: :fab_word,
      description: "Fab.Word is an Elixir library for generating random words",
      version: "1.0.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:fab, "~> 1.0"},
      {:dialyxir, "== 1.4.5", only: :dev, runtime: false},
      {:ex_doc, "== 0.37.3", only: :dev, runtime: false}
    ]
  end

  defp package do
    %{
      authors: ["Anthony Smith"],
      licenses: ["MIT"],
      links: %{
        Fab: "https://hexdocs.pm/fab/Fab.html",
        GitHub: "https://github.com/Fab-Elixir/fab_word"
      }
    }
  end
end
