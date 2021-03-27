class AdminController < ApplicationController
  before_action :logged_in_user
  before_action :check_admin_user

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = 'ユーザを削除しました'
    redirect_to users_url
  end

  private

  # 管理者かどうか確認
  def check_admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
