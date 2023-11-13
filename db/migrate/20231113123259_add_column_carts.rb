# frozen_string_literal: true

class AddColumnCarts < ActiveRecord::Migration[7.0]
  def change
    add_column :carts, :first_name, :string
    add_column :carts, :last_name, :string
    add_column :carts, :user_name, :string
    add_column :carts, :email, :string
    add_column :carts, :address, :string
    add_column :carts, :address_2, :string
    add_column :carts, :country, :string
    add_column :carts, :state, :string
    add_column :carts, :zip, :string
    add_column :carts, :shipping_address_same_address, :string
    add_column :carts, :save_information, :string
    add_column :carts, :name_on_card, :string
    add_column :carts, :credit_card_number, :string
    add_column :carts, :expiration, :string
    add_column :carts, :cvv, :string
  end
end
