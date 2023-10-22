# frozen_string_literal: true

class RenameColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :items, :item_name, :name
    rename_column :items, :item_price, :price
  end
end
