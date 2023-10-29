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
    Item.create(post_params)
  end

  def edit
  end

  def update
  end

  def destroy
    item = Item.find(params[:id])
    item.delete
    redirect_to admin_root_path
  end

  private

  def post_params
    params.require(:item).permit(:name, :price, :description, :discount)
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end