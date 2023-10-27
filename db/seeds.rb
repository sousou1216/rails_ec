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

item_a = Item.create(name: '商品A', price: 100)
item_a.image.attach(io: File.open('app/assets/images/sample.jpg'), filename: 'sample.jpg')

item_b = Item.create(name: '商品B', price: 200)
item_b.image.attach(io: File.open('app/assets/images/sample.jpg'), filename: 'sample.jpg')

item_c = Item.create(name: '商品C', price: 300)
item_c.image.attach(io: File.open('app/assets/images/sample.jpg'), filename: 'sample.jpg')
