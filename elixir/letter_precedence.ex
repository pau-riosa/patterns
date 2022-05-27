defmodule LetterPrecedence do
  @moduledoc """
  A precedence rule is given as "P>E", which means that letter "P" is followed by letter "E". 
  Write a function, given an array of precedence rules, that finds the word represented by the given rules. 
  Note: Each represented word contains a set of unique characters, i.e. the word does not contain duplicate letters.
  """
  def call(rules) do
    split_letters =
      for letters <- rules do
        String.split(letters, ">")
      end

    start_letters =
      Enum.map(split_letters, fn [start, _] ->
        start
      end)

    end_letters =
      Enum.map(split_letters, fn [_, followed_by] ->
        followed_by
      end)

    start_letter =
      Enum.find(start_letters, fn letter ->
        not Enum.member?(end_letters, letter)
      end)

    for [start, followed] <- split_letters do
      {start, followed}
    end
    |> Enum.into(%{})
    |> recur(start_letter, start_letter)
    |> IO.inspect()
  end

  def recur(map, key, acc) when map_size(map) == 0 do
    acc
  end

  def recur(map, key, acc) do
    case Map.pop(map, key, :not_found) do
      {:not_found, _} -> acc
      {value, rest} -> recur(rest, value, acc <> value)
    end
  end
end

[
  ["P>E", "E>R", "R>U"],
  ["I>N", "A>I", "P>A", "S>P"],
  ["I>F", "W>I", "S>W", "F>T"],
  ["U>N", "G>A", "R>Y", "H>U", "N>G", "A>R"],
  ["R>T", "A>L", "P>O", "O>R", "G>A", "T>U", "U>G"],
  ["U>N", "G>A", "R>Y", "H>U", "N>G", "A>R"],
  ["R>T", "A>L", "P>O", "O>R", "G>A", "T>U", "U>G"],
  ["W>I", "R>L", "T>Z", "Z>E", "S>W", "E>R", "L>A", "A>N", "N>D", "I>T"]
]
|> Enum.map(&LetterPrecedence.call(&1))
