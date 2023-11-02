# frozen_string_literal: true

class SessionsController < ApplicationController

  def get_session
    session_id = session[:session_id]
    redirect_to root_url
  end

  def destroy
    reset_session
    redirect_to root_url
  end

end
