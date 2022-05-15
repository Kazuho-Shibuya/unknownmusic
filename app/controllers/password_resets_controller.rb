class PasswordResetsController < ApplicationController
  before_action :get_user,   only: %i[edit update]
  before_action :valid_user, only: %i[edit update]
  before_action :check_expiration, only: %i[edit update]
  before_action :confirm_test_user, only: :create

  def new; end

  def create
    @user = User.find_by(email: params[:password_reset][:email].downcase)
    if @user
      @user.create_reset_digest
      @user.send_password_reset_email
    end
    flash.now[:info] = 'パスワード再設定メールを送信しました。届かない場合は再度メールアドレスを確認して送信してください'
    render 'new'
  end

  def edit; end

  def update
    if params[:user][:password].empty?
      @user.errors.add(:password, :blank)
      render 'edit'
    elsif @user.update(user_params)
      log_in @user
      @user.update(reset_digest: nil)
      flash[:success] = 'パスワードが更新されました'
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation)
  end

  def get_user
    @user = User.find_by(email: params[:email])
  end

  def valid_user
    unless @user&.activated? &&
           @user&.authenticated?(:reset, params[:id])
      redirect_to root_path
    end
  end

  # トークンが期限切れかどうか確認する
  def check_expiration
    return unless @user.password_reset_expired?

    flash[:danger] = 'パスワードリセットのリンクは期限切れです'
    redirect_to new_password_reset_path
  end

  def confirm_test_user
    email = params[:password_reset][:email].downcase
    return unless email == 'test@example.com'

    flash[:warning] = 'テストユーザのため変更できません'
    redirect_to root_path
  end
end
