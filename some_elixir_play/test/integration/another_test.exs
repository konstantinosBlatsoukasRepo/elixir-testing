defmodule Integration.AnotherTest do
  use ExUnit.Case

  test "integration calculator" do
    assert Calculators.TheCalculator.addition(1, 2) == 3
  end
end
