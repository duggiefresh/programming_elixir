people = [
  %{ name: "Grumpy", height: 1.24 },
  %{ name: "Dave",   height: 1.00 },
  %{ name: "Fishy",  height: 1.29 },
  %{ name: "Dylan",  height: 2.00 },
  %{ name: "Shaq",   height: 2.13 }
]

for person = %{ height: height } <- people,
  height > 1.5,
  do: IO.inspect person
