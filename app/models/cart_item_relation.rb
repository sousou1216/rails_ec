# frozen_string_literal: true

class CartItemRelation < ApplicationRecord
  belongs_to :cart
  belongs_to :item
end
