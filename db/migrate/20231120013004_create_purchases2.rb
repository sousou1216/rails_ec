class CreatePurchases2 < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.string :name, :description, :cart_id, :bill_id
      t.integer :price, :discount
      t.timestamps
    end
  end
end
