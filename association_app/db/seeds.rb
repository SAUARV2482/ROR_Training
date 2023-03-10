# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Category.destroy_all
Item.destroy_all
Modifier.destroy_all
Rating.destroy_all
ItemModifier.destroy_all
5.times do
  Category.create(name: Faker::Commerce.department)
end

10.times do
  item = Item.create(name: Faker::Commerce.department,
    price: Faker::Commerce.price,
    category_id: Category.ids.sample,
    stock_quantity: rand(1..100),
    status: Faker::Boolean.boolean(true_ratio: 0.5)
  )
  item.rating = Rating.new(rating: rand(1..5))
end

20.times do
  Modifier.create(name: Faker::Commerce.department,
    price: Faker::Commerce.price,
    stock_quantity: rand(1..100)
  )
end

10.times do
  ItemModifier.create(item_id: Item.ids.sample,
    modifier_id: Modifier.ids.sample)
end

