# frozen_string_literal: true

class CartItem < ApplicationRecord
  # no user for now
  # belongs_to :user
  belongs_to :meal

  before_create :set_quantity

  private

  def set_quantity
    self.quantity = 1
  end
end
