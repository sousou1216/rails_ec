class Admin::ItemsController < ApplicationController
  before_action :basic_auth

  def index
    @items = Item.all
    @item_end = Item.last
  end

  def new
    @item = Item.new
  end

  def create
    # ビューで使用しないため@は不要
    item = Item.create(post_params)
    item.images.attach(io: File.open("app/assets/images/sample_0.jpg"), filename: "sample_0.jpg")
    item.save!
    redirect_to admin_root_path
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update!(post_params)
    redirect_to admin_root_path
  end

  def destroy
    item = Item.find(params[:id])
    item.delete
    redirect_to admin_root_path
  end

  private

  def post_params
    params.require(:item).permit(:name, :price, :discount, :description)
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end