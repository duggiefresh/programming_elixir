# Go into iex. Create and run the functions that do the following:

# 1. list_concat.([:a, :b], [:c, :d])
#    #=> [:a, :b, :c, :d]

list_concat = fn (x, y) -> x ++ y end
list_concat.([:a, :b], [:c, :d])

# 2. sum.(1, 2, 3)
#    #=> 6

sum = fn (x, y, z) -> x + y + z end
sum.(1, 2, 3)

# 3. pair_tuple_to_list.({1234, 5678})
#    #=> [1234, 5678]

pair_tuple_to_list = fn {a, b} -> %[a, b] end
pair_tuple_to_list.({1234, 5678})
