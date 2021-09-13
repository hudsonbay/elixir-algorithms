defmodule ElixirTraining.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_training,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:ex_doc, "~> 0.11", only: :dev},
      {:mix_test_watch, "~> 1.0.2", only: :dev}
    ]
  end
end
