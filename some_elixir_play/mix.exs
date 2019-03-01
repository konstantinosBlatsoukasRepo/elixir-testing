defmodule SomeElixirPlay.MixProject do
  use Mix.Project
  @test_envs [:test, :integration]

  def project do
    [
      app: :some_elixir_play,
      version: "0.1.0",
      elixir: "~> 1.7",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      test_paths: test_paths(Mix.env()),
      deps: deps()
    ]
  end

  defp elixirc_paths(env) when env in @test_envs, do: ["lib", "test/helpers"]
  defp elixirc_paths(_), do: ["lib"]

  defp test_paths(:integration), do: ["test/integration"]
  defp test_paths(_), do: ["test/unit"]

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:mox, "~> 0.4.0", only: :test}
    ]
  end
end
