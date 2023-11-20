# frozen_string_literal: true

class BillsController < ApplicationController
  # カートが空以外の時に実行
  before_action :filter_method, only: [:create]

  def create
    # createを省略
    # 請求情報を保存
    @bill = Bill.new(post_params)

    if @bill.save
      # 例外が発生した場合はロールバックする
      ActiveRecord::Base.transaction do
        # 購入明細（カートの中身）を保存
        current_cart.items.each do |item|
          purchase = Purchase.new(
            name: item['name'],
            description: item['description'],
            discount: item['discount'],
            price: item['price'],
            cart_id: current_cart.id,
            bill_id: @bill.id
          )

          purchase.save
        end
      end

      # メイラーを呼び出す
      PurchaseMailer.creation_email(@bill, current_cart.items).deliver_now
      # カートのセッションをクリア({}にするとうまくいかない)
      session[:cart_id] = nil

      redirect_to items_path, notice: '購入ありがとうございます。'
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

  def filter_method
    return if current_cart.items.present?

    redirect_to carts_path, alert: 'カートが空です。'
  end
end
