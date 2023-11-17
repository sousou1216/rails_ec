# frozen_string_literal: true

module Admin
  class PurchasesController < ApplicationController
    before_action :basic_auth

    def index
      @purchases = Purchase.all
    end

    def show
      # @purchases = Purchase.find(params[:cart_id])
      @purchases = Purchase.where(cart_id: params[:cart_id])
      # binding.pry
      # params[:id]ではない！
      @bill = Bill.find(@purchases[0].bill_id)
    end

    def new; end

    def create; end

    private

    def basic_auth
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASSWORD']
      end
    end
  end
end
