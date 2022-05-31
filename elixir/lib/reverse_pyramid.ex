defmodule ReversePyramid do
  def call(number) do
    number
    |> reverse_pyramid
    |> Enum.into("", fn string ->
      string = Enum.join(string)
      "#{string}\n"
    end)
  end

  def reverse_pyramid(number) do
    for i <- 0..number do
      # for printing spaces

      spaces =
        for _j <- 0..i do
          " "
        end

      # for printing star
      star_number = 2 * (number - i) - 1

      star =
        for k when k < star_number <- 0..star_number do
          "*"
        end

      spaces ++ star
    end
  end
end
