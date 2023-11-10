# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_cart

  private

  def current_cart
    # セッションにcart_idがあればそれを使用し、なければ新しいカートを作成
    @current_cart ||= Cart.find_by(id: session[:cart_id]) || Cart.create
    # カートが新しく作成された場合はセッションにcart_idを保存
    session[:cart_id] ||= @current_cart.id

    @current_cart
  end
end
