class UsersController < ApplicationController
  before_action :logged_in_user, only: %i[index destroy
                                          following followers home]
  before_action :check_admin_user,     only: :destroy
  before_action :check_test_user, only: %i[destroy]
  before_action :set_micropost, only: %i[home]

  def index
    @users = User.where(activated: true).page(params[:page]).search(params[:search])
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.page(params[:page]).search(params[:search])
    redirect_to(root_url) && return unless @user.activated?
  end

  def home
    @user = User.find(params[:id])
    @feed_items = @feed_items.search(params[:search])
  end

  def following
    @title = 'フォロー中'
    @user  = User.find(params[:id])
    @users = @user.following.page(params[:page])
    render 'show_follow'
  end

  def followers
    @title = 'フォロワー'
    @user  = User.find(params[:id])
    @users = @user.followers.page(params[:page])
    render 'show_follow'
  end

  private

  # 管理者かどうか確認
  def check_admin_user
    redirect_to(root_url) unless current_user.admin?
  end

  # テストユーザかどうか確認する
  def check_test_user
    @user = User.find(params[:id])
    return unless @user.email == 'test@example.com'

    flash[:warning] = 'テストユーザのため変更できません'
    redirect_to root_url
  end

  def set_micropost
    @micropost = current_user.microposts.build
    @feed_items = current_user.feed.page(params[:page])
  end
end
