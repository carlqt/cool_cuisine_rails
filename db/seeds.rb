# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = %w[
  sides
  drinks
  regular
]

10.times do
  Meal.create(
    name: Faker::Coffee.blend_name,
    description: Faker::Coffee.notes,
    price_cents: Faker::Number.between(1000, 5000),
    image_url: Faker::LoremPixel.image('450x300', false, 'food'),
    categories: categories.sample
  )
end
