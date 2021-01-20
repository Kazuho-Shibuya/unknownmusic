class ApplicationController < ActionController::Base
  include SessionsHelper

  private

  # ログイン済みユーザかどうか確認
  def logged_in_user
    return if logged_in?

    store_location
    flash[:danger] = 'ログインしてください'
    redirect_to new_session_url
  end
end
