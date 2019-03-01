defmodule Calculators.NormalCalculator do
  @behaviour Calculator

  def add(x, y), do: x + y
  def mult(x, y), do: x * y
end
