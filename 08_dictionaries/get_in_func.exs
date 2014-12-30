authors = [
  %{ name: "Doug", language: "Elixir" },
  %{ name: "Phil", language: "JS" },
  %{ name: "Bobb", language: "Ruby" }
]

languages_with_an_r = fn (:get, collection, next_fn) ->
  for row <- collection do
    if String.contains?(row.language, "r") do
      next_fn.(row)
    end
  end
end
