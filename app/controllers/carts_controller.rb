class CartsController < ApplicationController

  def index
  end

  # カートにアイテムを追加
  def add_to_cart
    item_id = params[:item_id]
    session[:cart] ||= [] # カートがない場合は初期化

    unless session[:cart].include?(item_id)
      session[:cart] << item_id
    end

    # カートにアイテムを追加した後の処理
    
  end

  # カート内のアイテムを削除
  def remove_from_cart
    item_id = params[:item_id]
    session[:cart] ||= []

    session[:cart].delete(item_id)

    # カートからアイテムを削除した後の処理
  end

end

