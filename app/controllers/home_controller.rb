class HomeController < ApplicationController
  before_action :confirmation_logged_in_user?
  before_action :build_micropost

  def index
    @feed_items = current_user.feed.page(params[:page]).search(params[:search])
  end

  private

  def build_micropost
    @micropost = current_user.microposts.build
  end
end
