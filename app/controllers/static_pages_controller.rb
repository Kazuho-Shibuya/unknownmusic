class StaticPagesController < ApplicationController
  before_action :set_micropost, only: %i[home search_result]

  def home; end

  def search_result
    @result_artists_name = params[:name]
    @result_track = params[:track]
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
