# frozen_string_literal: true

class Cart < ApplicationRecord
  has_many :cart_items, dependent: :delete_all
  has_many :items, through: :cart_items

  def add(item, quantity)
    item_quantity = quantity.to_i
    item_quantity.times { items << item }
  end
end
