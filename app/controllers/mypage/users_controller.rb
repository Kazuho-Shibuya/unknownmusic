class Mypage::UsersController < ApplicationController
  before_action :logged_in_user
  before_action :check_test_user

  def edit; end

  def update
    if current_user.update(user_params)
      flash[:success] = 'プロフィールを更新しました'
      redirect_to current_user
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image)
  end

  # テストユーザかどうか確認する
  def check_test_user
    current_user_email = current_user.email
    return unless current_user_email == 'test@example.com'

    flash[:warning] = 'テストユーザのため変更できません'
    redirect_to root_url
  end
end
