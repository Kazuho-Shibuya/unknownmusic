class SongsController < ApplicationController
  require 'rspotify'
  RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET_ID'])

  def search
    if params[:search].present?
      # @searchartists = RSpotify::Artist.search(params[:search])
      @searchtracks = RSpotify::Track.search(params[:search])
    end
  end

  def search_result
    @result_artists_name = params[:name]
    @result_track = params[:track]
    render 'songs/search'
  end
end
