defmodule Pyramid do
  def call(number) do
    Enum.into(pyramid(number), "", fn string ->
      string = Enum.join(string)
      "#{string}\n"
    end)
  end

  def pyramid(number) do
    for i <- 1..number do
      # for printing spaces

      spaces =
        for j when j <= number - i <- 1..number do
          " "
        end

      # for printing star
      star_number = 2 * i - 1

      star =
        for _k <- 1..star_number do
          "*"
        end

      spaces ++ star
    end
  end
end
