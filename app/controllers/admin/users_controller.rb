# frozen_string_literal: true

module Admin
  class UsersController < ApplicationController
    skip_before_action :login_required
    # before_action :require_admin
    before_action :basic_auth

    def index
      @users = User.all
    end

    def new
      @user = User.new
    end

    def edit
      @user = User.find(params[:id])
    end

    def create
      user = User.new(user_params)

      if user.save
        redirect_to admin_users_path, notice: "ユーザー「#{user.name}」を登録しました。"
      else
        render :new
      end
    end

    def update
      user = User.find(params[:id])

      if user.update(user_params)
        redirect_to admin_users_path, notice: "ユーザー「#{user.name}」を更新しました。"
      else
        render :edit
      end
    end

    def destroy
      user = User.find(params[:id])
      user.destroy
      redirect_to admin_user_url, notice: "ユーザー「#{user.name}」を削除しました。"
    end

    private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    # def require_admin
    #   redirect_to login_url unless current_user.admin?
    # end

    def basic_auth
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASSWORD']
      end
    end
  end
end
