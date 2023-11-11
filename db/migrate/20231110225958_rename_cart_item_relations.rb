# frozen_string_literal: true

class RenameCartItemRelations < ActiveRecord::Migration[7.0]
  def change
    rename_table :cart_item_relations, :cart_items
  end
end
