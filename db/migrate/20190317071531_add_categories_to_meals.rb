# frozen_string_literal: true

class AddCategoriesToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :categories, :string
  end
end
