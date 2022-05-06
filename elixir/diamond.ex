pyramid = fn number ->
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

reverse_pyramid = fn number ->
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

diamond = fn number ->
  diamond = pyramid.(number) ++ reverse_pyramid.(number)

  diamond
  |> Enum.into("", fn string ->
    string = Enum.join(string)
    "#{string}\n"
  end)
end

IO.puts(diamond.(10))
IO.puts(diamond.(5))
