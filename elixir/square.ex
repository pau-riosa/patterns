square = fn n ->
  string =
    for _x <- 0..n do
      for _y <- 0..n do
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
