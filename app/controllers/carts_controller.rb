class CartsController < ApplicationController
  def index; end

  # カートにアイテムを追加
  def add_to_cart
    item = Item.find(params[:id])
    if params[:quantity]
      item_quantity = params[:quantity].to_i
      item_quantity.times do
        current_cart.items << item
      end
    else
      current_cart.items << item
    end

    # カートにアイテムを追加した後の処理
    redirect_to items_path, notice: 'カートに追加しました。'
  end

  # カート内のアイテムを削除
  def delete_from_cart
    delete_id = params[:id].to_i

    # ※関連付けを解除しないとitemsテーブルから削除されたりエラーとなったりする
    # 指定された item_id を持つカート内の最初の cart_item_relation を取得
    delete_relation = current_cart.cart_item_relations.find_by(item_id: delete_id)
    # cart_item_relation が存在する場合は、その関連を削除
    delete_relation.destroy if delete_relation.present?

    # カートからアイテムを削除した後の処理
    redirect_to carts_path, notice: 'カートから削除しました。'
  end
end
