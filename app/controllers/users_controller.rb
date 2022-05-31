class UsersController < ApplicationController
  before_action :confirmation_logged_in_user?, only: %i[index following followers]
  before_action :set_user, only: %i[show following followers]

  def index
    @users = User.where(activated: true).page(params[:page]).search(params[:search])
  end

  def show
    @microposts = @user.microposts.page(params[:page]).search(params[:search])
    redirect_to(root_path) && return unless @user.activated?
  end

  def following
    @title = 'フォロー中'
    @users = @user.following.page(params[:page])
    render 'show_follow'
  end

  def followers
    @title = 'フォロワー'
    @users = @user.followers.page(params[:page])
    render 'show_follow'
  end

  private

  def set_user
    @user  = User.find(params[:id])
  end
end
