use Mix.Config

app = Mix.Project.config()[:app]

config app, :calculator, MockCalculator


# config app, :calculator, Calculators.KostasCalculator


# Application.put_env(:some_elixir_play, :calculator, MockCalculator)
