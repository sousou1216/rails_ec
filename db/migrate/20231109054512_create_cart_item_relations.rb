class CreateCartItemRelations < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_item_relations do |t|
      t.references :cart, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
