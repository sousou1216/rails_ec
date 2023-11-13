# frozen_string_literal: true

class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :email
      t.string :address
      t.string :address_2
      t.string :country
      t.string :state
      t.string :zip
      t.string :shipping_address_same_address
      t.string :save_information
      t.string :name_on_card
      t.string :credit_card_number
      t.string :expiration
      t.string :cvv
      t.timestamps
    end
  end
end
