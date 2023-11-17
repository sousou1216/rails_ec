# frozen_string_literal: true

class AddColumnPurchases4 < ActiveRecord::Migration[7.0]
  def change
    add_column :purchases, :name, :string
    add_column :purchases, :price, :integer
    add_column :purchases, :description, :string
    add_column :purchases, :discount, :integer
    add_column :purchases, :cart_id, :string
    add_column :purchases, :bill_id, :string
  end
end
