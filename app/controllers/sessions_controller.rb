class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    # ユーザがデータベースにあり、かつ、認証に成功した場合
    if user&.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'メールアドレスとパスワードの組み合わせが無効です'
      render 'new'
    end
  end

  def destroy; end
end