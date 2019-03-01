defmodule Unit.SomeElixirPlayTest do
  use ExUnit.Case
  import Mox

  test "mox" do

    expect(MockCalculator, :add, fn x, y -> 30 end)
    expect(MockCalculator, :mult, fn x, y -> 20 end)

    assert Math.perform_addition_and_mulitplication(2, 3) == 50
  end
end

# defmodule Unit.SomeElixirPlayTest do
#   use ExUnit.Case

#   test "a test" do
#     assert Math.perform_addition_and_mulitplication(1, 1) == 96
#   end

# end

