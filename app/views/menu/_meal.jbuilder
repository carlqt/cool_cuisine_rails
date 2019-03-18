json.(
  meal,
  :id,
  :name,
  :description,
  :image_url,
)

# json.price humanized_money_with_symbol meal.price
json.price do
  json.amount humanized_money(meal.price)
  json.currency meal.price.symbol
  json.amount_with_currency humanized_money_with_symbol(meal.price)
end
