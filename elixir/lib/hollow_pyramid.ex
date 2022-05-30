hollow_pyramid = fn number ->
  for i <- 1..number do
    # for printing spaces

    spaces =
      for j when j <= number - i <- 1..number do
        " "
      end

    # for printing star
    star_number = 2 * i - 2

    star =
      for k <- 0..star_number do
        if i == 1 || i == number do
          "*"
        else
          if k == 0 || k == star_number do
            "*"
          else
            " "
          end
        end
      end

    spaces ++ star
  end
  |> Enum.into("", fn string ->
    string = Enum.join(string)
    "#{string}\n"
  end)
end

IO.puts(hollow_pyramid.(10))
IO.puts(hollow_pyramid.(5))
