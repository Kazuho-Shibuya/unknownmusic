class PasswordResetsController < ApplicationController
  before_action :get_user,   only: %i[edit update]
  before_action :valid_user, only: %i[edit update]
  before_action :check_expiration, only: %i[edit update]
  before_action :check_test_user, only: :create

  def new; end

  def create
    @user = User.find_by(email: params[:password_reset][:email].downcase)
    if @user
      @user.create_reset_digest
      @user.send_password_reset_email
      flash[:info] = 'パスワード再設定メールを送信しました。'
      redirect_to root_url
    else
      flash.now[:danger] = 'メールアドレスが見つかりません。'
      render 'new'
    end
  end

  def edit; end

  def update
    if params[:user][:password].empty?
      @user.errors.add(:password, :blank)
      render 'edit'
    elsif @user.update(user_params)
      log_in @user
      @user.update_attribute(:reset_digest, nil)
      flash[:success] = 'パスワードがリセットされました。'
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation)
  end

  # beforeフィルタ
  def get_user
    @user = User.find_by(email: params[:email])
  end

  # 正しいユーザーかどうか確認する
  def valid_user
    unless @user&.activated? &&
           @user&.authenticated?(:reset, params[:id])
      redirect_to root_url
    end
  end

  # トークンが期限切れかどうか確認する
  def check_expiration
    return unless @user.password_reset_expired?

    flash[:danger] = 'パスワードのリセットリンクは期限切れです。'
    redirect_to new_password_reset_url
  end

  # テストユーザかどうか確認する
  def check_test_user
    email = params[:password_reset][:email].downcase
    if email == 'test@example.com'
      flash[:notice] = 'テストユーザのため変更できません'
      redirect_to root_path
    end
  end
end
