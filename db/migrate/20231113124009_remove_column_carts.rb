# frozen_string_literal: true

class RemoveColumnCarts < ActiveRecord::Migration[7.0]
  def change
    remove_column :carts, :user, :string
    remove_column :carts, :item, :string
    remove_column :carts, :amount, :string
  end
end
