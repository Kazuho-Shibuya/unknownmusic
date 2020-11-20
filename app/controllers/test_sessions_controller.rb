class TestSessionsController < ApplicationController
  def create
    user = User.find_by(email: 'test@example.com')
    return if user.blank?

    session[:user_id] = user.id
    flash[:success] = 'テストユーザとしてログインしました。'
    redirect_to user
  end
end
