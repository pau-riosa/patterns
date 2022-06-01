defmodule PrimeFactor do
  @moduledoc """
  The prime factors of 13195 are 5, 7, 13 and 29.

  What is the largest prime factor of the number 600851475143 ?
  """

  def largest_prime_factor(number) do
    number
    |> call
    |> List.last()
  end

  def call(number) do
    do_call(number, [])
  end

  defp do_call(1, list), do: Enum.reverse(list)

  defp do_call(number, list) when rem(number, 2) == 0 do
    do_call(div(number, 2), [2 | list])
  end

  defp do_call(number, list) when number > 2 do
    do_call(number, 3, list)
  end

  defp do_call(number, prime, list) when number < prime do
    do_call(1, list)
  end

  defp do_call(number, prime, list) when rem(number, prime) == 0 do
    do_call(div(number, prime), prime, [prime | list])
  end

  defp do_call(number, prime, list) do
    do_call(number, prime + 2, list)
  end
end
