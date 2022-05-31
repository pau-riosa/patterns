defmodule MultiplesOfThreeOrFive do
  @moduledoc """
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
  The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.
  """

  def call(list) do
    list
    |> Enum.filter(fn integer ->
      rem(integer, 3) == 0 || rem(integer, 5) == 0
    end)
    |> Enum.reduce(0, fn integer, acc -> acc + integer end)
  end
end
