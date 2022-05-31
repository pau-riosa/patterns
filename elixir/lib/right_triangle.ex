right_triangle = fn number ->
  for i when i <= number <- 0..number do
    # for printing spaces
    spaces =
      for j when j < number - i <- 0..number do
        " "
      end

    # for printing star
    star =
      for _k <- 0..i do
        "*"
      end

    spaces ++ star
  end
  |> Enum.into("", fn string ->
    string = Enum.join(string)
    "#{string}\n"
  end)
end

IO.puts(right_triangle.(10))
IO.puts(right_triangle.(5))
