# Add a `quadruple` function. (Maybe it could call the `double` function...)

defmodule Times do
  def double(n) do
    n * 2
  end

  def quadruple(n) do
    n * 4
  end

  def quadruple2(n) do
    double(n) * 2
  end
end
