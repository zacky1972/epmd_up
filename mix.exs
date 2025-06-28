defmodule EpmdUp.MixProject do
  use Mix.Project

  @source_url "http://github.com/zacky1972/epmd_up"

  def project do
    [
      app: :epmd_up,
      version: "1.0.2",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "EpmdUp",
      source_url: @source_url,
      docs: &docs/0,

      # Hex
      description: description(),
      package: package(),
      aliases: aliases(),
      dialyzer: dialyzer()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  def package do
    [
      name: :epmd_up,
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/TODO/epmd_up"}
    ]
  end

  def aliases do
    [
      check: [
        "hex.audit",
        "compile --warnings-as-errors --force",
        "format --check-formatted",
        "credo",
        "deps.unlock --check-unused",
        "spellweaver.check",
        "dialyzer"
      ]
    ]
  end

  def dialyzer do
    [
      plt_add_apps: [:mix],
      ignore_warnings: ".dialyzer_ignore.exs"
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:nstandard, "~> 0.1"},
      {:igniter, "~> 0.6", only: [:dev, :test]},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.31", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0", only: [:dev, :test], runtime: false},
      {:spellweaver, "~> 0.1", only: [:dev, :test], runtime: false}
    ]
  end

  defp docs do
    [
      main: "EpmdUp",
      extras: ["README.md", "LICENSE"]
    ]
  end

  defp description do
    "EpmdUp: A simple Elixir module to check and manage the Erlang Port Mapper Daemon (epmd)."
  end
end
