defmodule MyList do
  def add_1([]),              do : []
  def add_1([ head | tail ]), do : [ head + 1 | add_1(tail) ]

  def map([], _func),       do : []
  def map([ head | tail ]), do : [ func.(head) | map(tail, func) ]

  def square([]),              do : []
  def square([ head | tail ]), do : [ head * head | square(tail) ]
end
