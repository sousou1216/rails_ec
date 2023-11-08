# frozen_string_literal: true

module Admin
  class ItemsController < ApplicationController
    before_action :basic_auth
    before_action :filter_method, only: %i[edit update destroy]

    def index
      @items = Item.all
      @item_end = Item.last
    end

    def new
      @item = Item.new
    end

    def create
      @item = Item.create(post_params)
      @item.images.attach(io: File.open('app/assets/images/sample_0.jpg'), filename: 'sample_0.jpg')
      @item.images.attach(io: File.open('app/assets/images/sample_1.jpg'), filename: 'sample_1.jpg')

      if @item.save
        redirect_to admin_root_path, notice: "商品「#{@item.name}」を登録しました。"
      else
        render :new
      end
    end

    def edit; end

    def update
      if @item.update(post_params)
        redirect_to admin_root_path, notice: "商品「#{@item.name}」を更新しました。"
      else
        render :edit
      end
    end

    def destroy
      @item.delete
      redirect_to admin_root_path, notice: "商品「#{@item.name}」を削除しました。"
    end

    private

    def post_params
      params.require(:item).permit(:name, :price, :discount, :description)
    end

    def basic_auth
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASSWORD']
      end
    end

    def filter_method
      @item = Item.find(params[:id])
    end
  end
end
