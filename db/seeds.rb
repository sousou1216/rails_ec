# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# if Rails.env.development?
#   (1..5).each do |i|
#     Item.create(name: "商品#{i}", price: i)
#   end
# end

names = %w[a b c]
prices = [100, 200, 300]
discounts = [80, nil, 50]
descriptions = %w[サッカーボール バスケットボール バレーボール]
count = 2

i = 0
while i < names.count
  item = Item.create(name: "商品#{names[i]}", price: prices[i], discount: discounts[i], description: descriptions[i])
  count.times do |num|
    item.images.attach(io: File.open("app/assets/images/sample_#{num}.jpg"), filename: "sample_#{num}.jpg")
  end
  i += 1
end
