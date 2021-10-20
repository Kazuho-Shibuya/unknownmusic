class AccountActivationsController < ApplicationController
  def edit
    user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
      user.activate
      log_in user
      flash[:success] = 'アカウントを認証しました'
      redirect_to user
    else
      flash[:danger] = 'アカウント認証が無効です'
      redirect_to root_path
    end
  end
end
