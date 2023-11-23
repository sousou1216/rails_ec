class PromotionsController < ApplicationController
  def create
    promotion = Promotion.find_by(code: params[:code])
    # プロモーションテーブルのusedカラムがfalseのもののみ処理
    if promotion && !promotion.used
      # 購入後にプロモーションコードを使用済みにするためにセッションを利用する
      session[:code] = promotion.code

      promo_price = promotion.price
      redirect_to carts_path(promo_price: promo_price)
    else
      promo_price = 0 # nilの場合はゼロとする
      redirect_to carts_path(promo_price: promo_price)
    end
  end
end