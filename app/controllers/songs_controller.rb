class SongsController < ApplicationController
  # require 'rspotify'
  # RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_SECRET_ID'])

  def search
    if params[:search].present?
      # @searchartists = RSpotify::Artist.search(params[:search])
      # @searchtracks = RSpotify::Track.search(params[:search])

      require 'net/http'
      require 'uri'

      uri = URI.parse('https://accounts.spotify.com/api/token')
      request = Net::HTTP::Post.new(uri)
      request['Authorization'] = 'Basic OTRlYTk2OGU5ZDMzNGJkM2JlMzNjMWMzZmJiMjVjYzA6YmFmYzk5YTE2OTMzNDhmYWE3MTFmYTkxYzFkZGFhYTM='
      request.set_form_data(
        'grant_type' => 'client_credentials'
      )

      req_options = {
        use_ssl: uri.scheme == 'https'
      }

      response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        http.request(request)
      end

      auth_params = JSON.parse(response.body)
      access_token = auth_params['access_token']

      get_uri = 'https://api.spotify.com/v1/search?q=' + params[:search] + '&type=track'
      uri_encode = URI.encode(get_uri)
      uri = URI.parse(uri_encode)
      request = Net::HTTP::Get.new(uri)
      request.content_type = 'application/json'
      request['Accept'] = 'application/json'
      request['Authorization'] = 'Bearer ' + access_token
      request['Accept-Language'] = 'ja;q=1'
      req_options = {
        use_ssl: uri.scheme == 'https'
      }
      response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        http.request(request)
      end

      response_hash = response.body
      @searchtracks = JSON.parse(response_hash)
    end
  end
end
