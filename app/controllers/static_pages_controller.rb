class StaticPagesController < ApplicationController
  before_action :logged_in_user, only: %i[home search_result]
  before_action :set_micropost, only: %i[home search_result]

  def top; end

  def home
    # 検索拡張機能として.search(params[:search])を追加
    @feed_items = @feed_items.search(params[:search])
  end

  def search_result
    @result_artist_name = params[:artist]
    @result_track = params[:song]
    @result_listening_url = params[:listening_url]
    render 'static_pages/home'
  end

  def about; end

  private

  def set_micropost
    @micropost = current_user.microposts.build
    @feed_items = current_user.feed.page(params[:page]).per(20)
  end
end
