# frozen_string_literal: true

class BillsController < ApplicationController
  def create
    # createを省略
    @bill = Bill.new(post_params)

    if @bill.save
      redirect_to items_path, notice: '購入ありがとうございます。'
      # カートを空にする
    else
      render carts_path
    end
  end

  private

  def post_params
    # params.require(:bill)だと取得できない
    params.permit(:first_name, :last_name, :user_name, :email, :address, :address2 \
      , :country, :state, :zip, :shipping_address_same_address, :save_information, :name_on_card \
      , :credit_card_number, :expiration, :cvv)
  end
end
