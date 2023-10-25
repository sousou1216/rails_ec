class AddColumnDescription < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :description, :text
    add_column :items, :discount, :integer
  end
end
