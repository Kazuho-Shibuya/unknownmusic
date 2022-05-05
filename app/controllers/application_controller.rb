class ApplicationController < ActionController::Base
  include SessionsHelper

  private

  def confirmation_logged_in_user?
    return if logged_in?

    store_location
    flash[:danger] = 'ログインしてください'
    redirect_to new_session_path
  end
end
