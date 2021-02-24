class StaticPagesController < ApplicationController
  before_action :logged_in_user, only: %i[search_result]
  before_action :set_micropost, only: %i[search_result]

  def top; end

  def search_result
    spotify_api = Spotify_api.new
    access_token = spotify_api.get_access_token
    uri_id = spotify_api.get_uri_id(params[:search_tracks_item_id])
    @search_result = spotify_api.search(access_token, uri_id)
    render 'users/home'
  end

  def about; end

  private

  def set_micropost
    @micropost = current_user.microposts.build
    @feed_items = current_user.feed.page(params[:page])
  end
end
