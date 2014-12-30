# If you assume the variable a initially contains  the value 2, which of the
# following will match?

[a, b, a] = [1, 2, 3]
#=> Will not match.

[a, b, a] = [1, 1, 2]
#=> Will not match.

a = 1
#=> Could possibly match with the previous variable

^a = 2
#=> Match!

^a = 1
#=> No match!

^a = 2 - a
#=> No match!
