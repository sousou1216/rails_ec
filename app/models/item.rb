# frozen_string_literal: true

class Item < ApplicationRecord
  # has_one_attached :image
  has_many_attached :images
  has_many :cart_item_relations, dependent: :delete_all
  has_many :carts, through: :cart_item_relations

  validates :name, presence: true
end
