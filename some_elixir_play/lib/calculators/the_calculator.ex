defmodule Calculators.TheCalculator do

  @calculator Application.get_env(:some_elixir_play, :calculator)


  def addition(x, y), do: @calculator.add(x, y)
  def mult(x, y), do: x * y
end
