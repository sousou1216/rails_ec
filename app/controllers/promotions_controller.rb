# frozen_string_literal: true

class PromotionsController < ApplicationController
  def create
    promotion = Promotion.find_by(code: params[:code])
    # プロモーションテーブルのusedカラムがfalseのもののみ処理
    if promotion && !promotion.used
      # 購入後にプロモーションコードを使用済みにするためにセッションを利用する
      session[:code] = promotion.code

      promo_price = promotion.price
    else
      promo_price = 0 # nilの場合はゼロとする
    end
    redirect_to carts_path(promo_price:)
  end
end
