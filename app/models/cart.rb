# frozen_string_literal: true

class Cart < ApplicationRecord
  has_many :cart_item_relations, dependent: :delete_all
  has_many :items, through: :cart_item_relations
end
