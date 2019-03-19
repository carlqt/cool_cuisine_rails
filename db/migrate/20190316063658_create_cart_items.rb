# frozen_string_literal: true

class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.references :user, foreign_key: true
      t.references :meal, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
