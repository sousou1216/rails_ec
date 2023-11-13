class BillsController < ApplicationController

  def create
    @bill = Bill.new(post_params)

    if @bill.save
      redirect_to items_path, notice: "購入ありがとうございます。"
      # カートを空にする
    else
      render :new
    end
  end

  private

    def post_params
      params.require(:bill).permit(:first_name, :last_name, :user_name, :email, :address, :address_2 \
        , :country, :state, :zip, :shipping_address_same_address, :save_information, :name_on_card \
        , :credit_card_number, :expiration, :cvv)
    end
end
