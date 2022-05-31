hollow_triangle_star = fn number ->
  for i <- 1..number do
    for j when j < i <- 0..i do
      if i == number do
        "*"
      else
        if j == 0 || j == i - 1 do
          "*"
        else
          " "
        end
      end
    end
  end
  |> Enum.into("", fn string ->
    string = Enum.join(string)
    "#{string}\n"
  end)
end

IO.puts(hollow_triangle_star.(10))
IO.puts(hollow_triangle_star.(5))
