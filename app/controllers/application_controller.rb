# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_cart
  helper_method :basic_auth

  private

  def current_cart
    # 以下のやり方だと一意性制約違反となりエラーとなる場合がある
    # セッションにcart_idがあればそれを使用し、なければ新しいカートを作成
    # @current_cart = Cart.find_or_create_by(id: session[:cart_id])
    # カートが新しく作成された場合はセッションにcart_idを保存
    # session[:cart_id] ||= @current_cart.id
    # @current_cart

    # 一意性制約違反に対応
    if session[:cart_id]
      # セッションに保存されたカートIDを使用してカートを検索
      @current_cart = Cart.find_by(id: session[:cart_id])
    end

    unless @current_cart
      # カートが見つからない場合は新しいカートを作成し、セッションに保存
      @current_cart = Cart.create
      session[:cart_id] = @current_cart.id
    end

    @current_cart
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASSWORD']
    end
  end
end
