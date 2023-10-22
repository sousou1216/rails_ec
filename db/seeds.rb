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

(1..5).each do |i|
  Item.create(name: "商品#{i}", price: i)
end
