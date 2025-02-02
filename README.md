# Elixir Enum.each Unexpected Order with Long Tasks

This repository demonstrates a subtle issue in Elixir's `Enum.each` when used with functions that perform long-running tasks.  While `Enum.each` typically iterates in order, the order is not strictly guaranteed if the function involves operations that block or significantly delay execution.

The `bug.exs` file shows how a `Process.sleep` call inside the `Enum.each` can lead to unexpected output order.  The solution (`bugSolution.exs`) demonstrates a safer approach using `Enum.map` and `IO.puts` on the resulting list, ensuring the intended order is maintained.