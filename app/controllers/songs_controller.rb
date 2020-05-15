class SongsController < ApplicationController
  require 'rspotify'
  RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET_ID'])

  def search
    @searchartists = RSpotify::Artist.search(params[:search]) if params[:search].present?
  end
end
