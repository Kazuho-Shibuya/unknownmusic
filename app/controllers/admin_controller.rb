class AdminController < ApplicationController
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = 'ユーザを削除しました'
    redirect_to users_url
  end
end
