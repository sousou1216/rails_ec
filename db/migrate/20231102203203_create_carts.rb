# frozen_string_literal: true

class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.string :user
      t.string :item
      t.integer :amount

      t.timestamps
    end
  end
end
