```elixir
list = [1, 2, 3, 4, 5]

results = Enum.map(list, fn x ->
  if x == 3 do
    Process.sleep(1000) # Simulate some work
  end
  x
end)

Enum.each(results, &IO.puts/1)
```