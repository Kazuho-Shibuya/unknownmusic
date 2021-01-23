class Mypage::UsersController < ApplicationController
  before_action :check_test_user, { only: %i[edit update] }

  def edit; end

  def update
    if @user.update(user_params)
      flash[:success] = 'プロフィールを更新しました'
      redirect_to @user
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
    @user = User.find(params[:id])
    return unless @user.email == 'test@example.com'

    flash[:warning] = 'テストユーザのため変更できません'
    redirect_to root_path
  end
end
