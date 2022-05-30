defmodule Diamond do
  alias Pyramid

  def call(number) do
    number
    |> Pyramid.pyramid()
    |> Kernel.++(reverse_pyramid(number))
    |> Enum.into("", fn string ->
      string = Enum.join(string)
      "#{string}\n"
    end)
  end

  def reverse_pyramid(number) do
    for i <- 1..number do
      # for printing spaces

      spaces =
        for j when j < i <- 0..i do
          " "
        end

      # for printing star
      start_number = (number - i) * 2 - 1

      star =
        for k when k > 0 <- 0..start_number do
          "*"
        end

      spaces ++ star
    end
  end
end
