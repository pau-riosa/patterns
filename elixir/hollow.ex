hollow = fn number ->
  first_string =
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

  result =
    Enum.into(first_string, "", fn string ->
      string = Enum.join(string)
      "#{string}\n"
    end)

  result
end

IO.puts(hollow.(10))
IO.puts(hollow.(5))
