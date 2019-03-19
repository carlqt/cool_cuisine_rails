# frozen_string_literal: true

class User < ApplicationRecord
  has_one :cart_item
end
