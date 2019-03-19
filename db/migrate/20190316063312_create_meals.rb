# frozen_string_literal: true

class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.integer :price_cents
      t.string :name
      t.text :description
      t.text :image_url

      t.timestamps
    end
  end
end
