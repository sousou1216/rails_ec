# frozen_string_literal: true

class RenameColumnBills < ActiveRecord::Migration[7.0]
  def change
    rename_column :bills, :address_2, :address2
  end
end
