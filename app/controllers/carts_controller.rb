class CartsController < ApplicationController

  def index
  end

  # カートにアイテムを追加
  def add_to_cart
    item = Item.find(params[:id])
    # binding.pry
    # 初期化しないとエラーになる
    session[:cart] ||= []
    if params[:quantity]
      item_quantity = params[:quantity]
      item_quantity.to_i.times do
        session[:cart] << item
      end
    else
      session[:cart] << item
    end

    # カートにアイテムを追加した後の処理
    redirect_to items_path, notice: "カートに追加しました。"
  end

  # カート内のアイテムを削除
  def delete_from_cart
    item = params[:id]
    
    # session[:cart] から最初に特定の条件に一致する要素を削除
    item_delete = session[:cart].find { |i| i['id'] == item['id'].to_i }
    if item_delete
      index_delete = session[:cart].find_index(item_delete)
      session[:cart].delete_at(index_delete)
    end
    
    # session[:cart] から特定の条件に一致する要素を削除
    # session[:cart].delete_if { |i| i['id'] == item['id'].to_i }

    # カートからアイテムを削除した後の処理
    redirect_to carts_path, notice: "カートから削除しました。"
  end

end

