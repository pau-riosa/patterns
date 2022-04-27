square = fn n ->
  string =
    for x when x < n <- 0..n do
      for y when y < n <- 0..n do
        " *"
      end
    end

  result =
    Enum.into(string, "", fn f ->
      new_string = Enum.join(f)
      "#{new_string}\n"
    end)

  result
end

IO.puts(square.(10))
IO.puts(square.(5))
