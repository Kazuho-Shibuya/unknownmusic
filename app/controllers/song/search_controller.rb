class Song::SearchController < ApplicationController
  def index
    return if params[:search].blank?

    spotify_api = Spotify_api.new
    access_token = spotify_api.get_access_token
    uri = spotify_api.get_uri(params[:search])
    @search_results = spotify_api.search(access_token, uri)
  end
end
