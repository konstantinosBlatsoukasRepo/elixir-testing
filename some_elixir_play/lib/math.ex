defmodule Math do
  @calculator Application.get_env(:some_elixir_play, :calculator)

  def perform_addition_and_mulitplication(a, b) do
    @calculator.add(a, b) + @calculator.mult(a, b)
  end
end
