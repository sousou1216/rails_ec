class SessionsController < ApplicationController
  # セッションIDはデフォルトで生成される
  # session[:session_id]

  def destroy
    reset_session
    redirect_to root_url
  end
end
