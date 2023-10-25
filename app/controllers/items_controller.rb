# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    @items = Item.all
    @item_end = Item.last
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(post_params)
  end

  def show
    # idに対応する単一のレコードを取得
    @item = Item.find(params[:id])

    @items = Item.all
    @item_end = Item.last
  end

  private

  def post_params
    params.require(:item).permit(:name, :price, :description, :discount)
  end
end