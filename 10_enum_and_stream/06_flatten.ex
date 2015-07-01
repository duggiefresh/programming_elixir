# This is simplest, however, also rebuilds the list at each step.
defmodule UsingConcat do
  def flatten([]), do: []
  def flatten([head | tail]), do: flatten(head) ++ flatten(tail)
  def flatten(head), do: [head]
end

defmodule MyList do
  def flatten(list), do: _flatten(list, [])

  defp _flatten([], result), do: Enum.reverse(result)

  # The following two function heads deal with the head
  # being a list.
  defp _flatten([ [ h | [] ] | tail ], result) do
    _flatten([ h | tail ], result)
  end

  defp _flatten([ [ h | t ] | tail ], result) do
    _flatten([ h, t | tail ], result)
  end

  # Otherwise the head is not, and we can collect it
  defp _flatten([ head | tail ], result) do
    _flatten(tail, [ head | result ])
  end
end


# Treats the original list more like a tree, flattening the subtrees
# on the right and merging the results into a tree that itself gets
# flattened.
defmodule JVList do
  def flatten(list), do: do_flatten(list, [])

  def do_flatten([ h | t ], tail) when is_list(h) do
    do_flatten(h do_flatten(t, tail))
  end

  def do_flatten([ h | t ], tail) do
    [ h | do_flatten(t, tail)]
  end

  def do_flatten([], tail) do
    tail
  end
end
