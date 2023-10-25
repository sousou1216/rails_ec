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

item_a = Item.create(name: '商品A', price: 100, description: 'サッカーボール', discount: 80)
item_a.images.attach(io: File.open('app/assets/images/sample.jpg'), filename: 'sample.jpg')
item_a.images.attach(io: File.open('app/assets/images/sample2.jpg'), filename: 'sample2.jpg')

item_b = Item.create(name: '商品B', price: 200, description: 'バスケットボール', discount: nil)
item_b.images.attach(io: File.open('app/assets/images/sample.jpg'), filename: 'sample.jpg')
item_b.images.attach(io: File.open('app/assets/images/sample2.jpg'), filename: 'sample2.jpg')

item_c = Item.create(name: '商品C', price: 300, description: 'バレーボール', discount: 50)
item_c.images.attach(io: File.open('app/assets/images/sample.jpg'), filename: 'sample.jpg')
item_c.images.attach(io: File.open('app/assets/images/sample2.jpg'), filename: 'sample2.jpg')
