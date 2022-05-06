pyramid = fn number ->
  for i when i <= number <- 1..number do
    # for printing spaces

    spaces =
      for j when j <= number - i <- 1..number do
        " "
      end

    star_number = 2 * i - 1
    # for printing star
    star =
      for k <- 1..star_number do
        "*"
      end

    spaces ++ star
  end
  |> Enum.into("", fn string ->
    string = Enum.join(string)
    "#{string}\n"
  end)
end

IO.puts(pyramid.(10))
IO.puts(pyramid.(5))
