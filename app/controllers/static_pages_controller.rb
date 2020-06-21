class StaticPagesController < ApplicationController
  before_action :set_micropost, only: %i[home search_result]

  def home
    @micropost  = current_user.microposts.build
    # 検索拡張機能として.search(params[:search])を追加
    @feed_items = current_user.feed.paginate(page: params[:page]).search(params[:search])
  end

  def search_result
    @result_artist_name = params[:artist]
    @result_track = params[:song]
    @result_listening_url = params[:listening_url]
    render 'static_pages/home'
  end

  private

  def set_micropost
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
end
