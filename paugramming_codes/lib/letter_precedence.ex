defmodule LetterPrecedence do
  @moduledoc """
  A precedence rule is given as "P>E", which means that letter "P" is followed by letter "E". 
  Write a function, given an array of precedence rules, that finds the word represented by the given rules. 
  Note: Each represented word contains a set of unique characters, i.e. the word does not contain duplicate letters.
  """
  def call(rules) do
    split_letters =
      Enum.map(rules, fn rule ->
        [first_letter, second_letter] = String.split(rule, ">")
        {first_letter, second_letter}
      end)

    start_letters = Enum.map(split_letters, &elem(&1, 0))
    end_letters = Enum.map(split_letters, &elem(&1, 1))
    start_letter = Enum.find(start_letters, &(not Enum.member?(end_letters, &1)))

    recur(split_letters, start_letter, start_letter)
    |> IO.inspect()
  end

  def recur(map, key, start_letter) do
    Enum.reduce(map, start_letter, fn {k, v}, acc ->
      if key == k,
        do: recur(map, v, acc <> v),
        else: acc
    end)
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
  ["W>I", "R>L", "T>Z", "Z>E", "S>W", "E>R", "L>A", "A>N", "N>D", "I>T"],
  ["I>N", "A>I", "P>A", "S>P"],
  ["O>N", "Z>O", "N>E"]
]
|> Enum.map(&LetterPrecedence.call(&1))
