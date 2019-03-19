# frozen_string_literal: true

json.data do
  json.meals @meals, partial: 'meal', as: :meal
  json.cart @cart_items, partial: 'shared/cart_item', as: :cart_item
end
