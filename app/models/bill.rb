# frozen_string_literal: true

class Bill < ApplicationRecord
  has_many :purchases
end
