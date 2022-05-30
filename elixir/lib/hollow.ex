hollow = fn number ->
  for i when i < number <- 0..number do
    for j when j < number <- 0..number do
      if i === 0 || i === number - 1 do
        "*"
      else
        if j === 0 || j === number - 1 do
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

IO.puts(hollow.(10))
IO.puts(hollow.(5))
