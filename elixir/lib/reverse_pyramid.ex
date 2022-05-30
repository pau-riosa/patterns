reverse_pyramid = fn number ->
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
  |> Enum.into("", fn string ->
    string = Enum.join(string)
    "#{string}\n"
  end)
end

IO.puts(reverse_pyramid.(10))
IO.puts(reverse_pyramid.(5))
