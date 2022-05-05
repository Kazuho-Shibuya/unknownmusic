class UsersController < ApplicationController
  before_action :confirmation_logged_in_user?, only: %i[index following followers]

  def index
    @users = User.where(activated: true).page(params[:page]).search(params[:search])
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.page(params[:page]).search(params[:search])
    redirect_to(root_path) && return unless @user.activated?
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
end
