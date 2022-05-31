defmodule FibonacciTest do
  use ExUnit.Case
  alias Fibonacci
  @moduletag timeout: 60_000

  test "show the fibonnaci sequence of the nth term" do
    assert [1, 2, 3, 5, 8, 13, 21, 34, 55, 89] == Fibonacci.fibonacci(10)
  end

  test "show the value of the nth term" do
    assert 1 == Fibonacci.fibonacci_nth_term(1)
    assert 2 == Fibonacci.fibonacci_nth_term(2)
    assert 89 == Fibonacci.fibonacci_nth_term(10)
  end

  test "find the sum of the even-valued terms" do
    assert 10 == Fibonacci.sum_of_even_fibonnaci(8)
    assert 188 == Fibonacci.sum_of_even_fibonnaci(400)
    assert 3_382 == Fibonacci.sum_of_even_fibonnaci(4_000)
    assert 14_328 == Fibonacci.sum_of_even_fibonnaci(40_000)
    assert 257_114 == Fibonacci.sum_of_even_fibonnaci(400_000)
    assert 4_613_732 == Fibonacci.sum_of_even_fibonnaci(4_000_000)
  end
end
