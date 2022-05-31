defmodule MultiplesOfThreeOrFiveTest do
  use ExUnit.Case
  alias MultiplesOfThreeOrFive

  test "Find the sum of all multiples of 3 or 5 below 10" do
    assert 23 == MultiplesOfThreeOrFive.call(1..9)
  end

  test "Find the sum of all multiples of 3 or 5 below 1000" do
    assert 233_168 == MultiplesOfThreeOrFive.call(1..999)
  end
end
