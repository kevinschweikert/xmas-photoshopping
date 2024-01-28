defmodule XmasPhotoshopping.MixProject do
  use Mix.Project

  def project do
    [
      app: :xmas_photoshopping,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
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
      {:tableau,
       git: "https://github.com/kevinschweikert/tableau", branch: "fix/base-path-schema"},
      {:phoenix_live_view, "~> 0.20.1"},
      {:tailwind, "~> 0.2", runtime: Mix.env() == :dev}
    ]
  end

  def aliases() do
    [
      build: ["tableau.build", "tailwind default --minify"],
      serve: ["tableau.server"]
    ]
  end
end
