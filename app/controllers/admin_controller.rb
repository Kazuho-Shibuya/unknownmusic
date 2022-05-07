class AdminController < ApplicationController
  before_action :confirmation_logged_in_user?
  before_action :confirmation_admin_user?

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = 'ユーザを削除しました'
    redirect_to users_path
  end

  private

  def confirmation_admin_user?
    redirect_to(root_path) unless current_user.admin?
  end
end
