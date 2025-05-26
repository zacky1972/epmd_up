defmodule EpmdUp.MixProject do
  use Mix.Project

  @source_url "http://github.com/zacky1972/epmd_up"

  def project do
    [
      app: :epmd_up,
      version: "0.2.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "EpmdUp",
      source_url: @source_url,
      docs: &docs/0,

      # Hex
      description: description(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.34", only: :dev, runtime: false, warn_if_outdated: true}
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

  defp package do
    [
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => @source_url}
    ]
  end
end
