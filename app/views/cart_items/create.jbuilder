# frozen_string_literal: true

json.data do
  json.partial! 'shared/cart_item', cart_item: @cart_item
end
