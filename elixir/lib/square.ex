square = fn n ->
  for _x <- 0..n do
    for _y <- 0..n do
      " *"
    end
  end
  |> Enum.into("", fn string ->
    string = Enum.join(string)
    "#{string}\n"
  end)
end

IO.puts(square.(10))
IO.puts(square.(5))
