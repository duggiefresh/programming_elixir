# Which of the following will match?

a = [1, 2, 3]
#=> a = [1, 2, 3]
# matches

a = 4
4 = a
#=> a = 4
# matches

[a, b] = [1, 2, 3]
# will not match

a = [[1, 2, 3]]
#=> a = [[1, 2, 3]]
# matches

[a] = [[1, 2, 3]]
#=> a = [1, 2, 3]
# matches

[[a]] = [[1, 2, 3]]
# will not match
