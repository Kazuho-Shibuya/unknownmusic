class Song::SearchController < ApplicationController
  before_action :logged_in_user, only: %i[create]
  before_action :set_micropost, only: %i[create]

  def index
    return if params[:search].blank?

    spotify_api = SpotifyApi.new
    access_token = spotify_api.get_access_token
    uri = spotify_api.get_uri(params[:search])
    @search_results = spotify_api.search(access_token, uri)
  end

  def create
    spotify_api = SpotifyApi.new
    access_token = spotify_api.get_access_token
    uri_id = spotify_api.get_uri_id(params[:search_tracks_item_id])
    @search_result = spotify_api.search(access_token, uri_id)
    render 'home/index'
  end

  private

  def set_micropost
    @micropost = current_user.microposts.build
    @feed_items = current_user.feed.page(params[:page])
  end
end
