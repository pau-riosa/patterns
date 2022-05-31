downward_triangle = fn number ->
  for i when i < number <- 0..number do
    for j when j < number - i <- 0..number do
      "*"
    end
  end
  |> Enum.into("", fn string ->
    string = Enum.join(string)
    "#{string}\n"
  end)
end

IO.puts(downward_triangle.(10))
IO.puts(downward_triangle.(5))
