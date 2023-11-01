# frozen_string_literal: true

class AddColumnDescription < ActiveRecord::Migration[7.0]
  def change
    change_table :items, bulk: true do |t|
      t.text :description
      t.integer :discount
    end
  end
end
