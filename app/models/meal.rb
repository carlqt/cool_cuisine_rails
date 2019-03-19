# frozen_string_literal: true

class Meal < ApplicationRecord
  monetize :price_cents
end
