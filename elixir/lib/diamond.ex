defmodule Diamond do
  def call(number) do
    diamond = pyramid(number) ++ reverse_pyramid(number)

    diamond
    |> Enum.into("", fn string ->
      string = Enum.join(string)
      "#{string}\n"
    end)
  end

  def pyramid(number) do
    for i <- 1..number do
      spaces =
        for j when j <= number - i <- 1..number do
          " "
        end

      star_number = 2 * i - 1

      star =
        for _k <- 1..star_number do
          "*"
        end

      spaces ++ star
    end
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
