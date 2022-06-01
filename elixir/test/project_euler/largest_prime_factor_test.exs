defmodule PrimeFactorTest do
  use ExUnit.Case
  alias PrimeFactor

  test "larget prime factor of 13195" do
    assert 29 = PrimeFactor.largest_prime_factor(13195)
  end

  test "larget prime factor of 600851475143" do
    assert 6857 = PrimeFactor.largest_prime_factor(600_851_475_143)
  end
end
