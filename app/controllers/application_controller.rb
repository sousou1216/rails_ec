class ApplicationController < ActionController::Base
  # before_action :login_required
  # 全てのビューから使えるようにする
  # helper_method :current_user

  # アクションではないメソッドはprivateで定義する
  # private

  # def login_required
  #   redirect_to login_url unless current_user
  # end

  # findメソッドではnilの時エラーとなるためfind_byを使う
  # def current_user
  #   @current_user || = User.find_by(id: session[:user_id] if session[:user_id])
  # end
end
