# Implement and run a function `sum(n)` that uses recursion to calculate
# the sum of the integers from 1 to `n`. You'll need to write this function
# inside a module in a separate file. Then load up iex, compile that file, and
# try your function.

defmodule Thing do
  def sum(0), do: 0
  def sum(x), do: x + sum(x - 1)
end
