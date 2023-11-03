# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    @items = Item.all
    @item_end = Item.last
  end

  def show
    # idに対応する単一のレコードを取得
    @item = Item.find(params[:id])

    @item_end = Item.last
  end

  private

  def post_params
    params.require(:item).permit(:name, :price, :discount, :description)
  end
end
