class SongsController < ApplicationController
  require './app/modules/spotify_api'

  def search
    return if params[:search].blank?

    spotify_api = Spotify_api.new
    access_token = spotify_api.get_access_token
    @search_infomations = spotify_api.search(access_token, params[:search])
  end
end
