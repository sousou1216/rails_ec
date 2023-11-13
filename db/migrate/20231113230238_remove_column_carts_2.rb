class RemoveColumnCarts2 < ActiveRecord::Migration[7.0]
  def change
    remove_column :carts, :first_name, :string
    remove_column :carts, :last_name, :string
    remove_column :carts, :user_name, :string
    remove_column :carts, :email, :string
    remove_column :carts, :address, :string
    remove_column :carts, :address_2, :string
    remove_column :carts, :country, :string
    remove_column :carts, :state, :string
    remove_column :carts, :zip, :string
    remove_column :carts, :shipping_address_same_address, :string
    remove_column :carts, :save_information, :string
    remove_column :carts, :name_on_card, :string
    remove_column :carts, :credit_card_number, :string
    remove_column :carts, :expiration, :string
    remove_column :carts, :cvv, :string
  end
end
