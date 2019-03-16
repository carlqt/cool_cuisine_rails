class User < ApplicationRecord
  has_one :cart_item
end
