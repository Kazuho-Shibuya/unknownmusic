class HomeController < ApplicationController
  before_action :logged_in_user
  before_action :set_micropost

  def index
    @feed_items = @feed_items.search(params[:search])
  end

  private

  def set_micropost
    @micropost = current_user.microposts.build
    @feed_items = current_user.feed.page(params[:page])
  end
end
