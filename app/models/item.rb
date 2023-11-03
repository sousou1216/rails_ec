# frozen_string_literal: true

class Item < ApplicationRecord
  # has_one_attached :image
  has_many_attached :images

  validates :name, presence: true

end
