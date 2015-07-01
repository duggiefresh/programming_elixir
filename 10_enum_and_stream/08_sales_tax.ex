defmodule Tax do
  def orders_with_total(orders, tax_rates) do
    orders |> Enum.map(add_total_to(&1, tax_rates))
  end

  def add_total_to(order = [id: _, ship_to: state, net_amount: net], tax_rates) do
    tax_rate = Keyword.get(tax_rates, state, 0)
    tax      = net * tax_rate
  end
end
