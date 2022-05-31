left_triangle = fn n ->
  for i <- 0..n do
    for _ <- 0..i do
      "*"
    end
  end
  |> Enum.into("", fn string ->
    string = Enum.join(string)
    "#{string}\n"
  end)
end

IO.puts(left_triangle.(10))
IO.puts(left_triangle.(5))
