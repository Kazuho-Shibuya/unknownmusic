class SongsController < ApplicationController
  def search
    return if params[:search].blank?

    require 'net/http'
    require 'uri'

    uri = URI.parse('https://accounts.spotify.com/api/token')
    request = Net::HTTP::Post.new(uri)
    request['Authorization'] = "Basic #{ENV['CLIENT_ENCODE']}"
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

    get_uri = "https://api.spotify.com/v1/search?q=#{params[:search]}&type=track&market=JP"
    uri_encode = URI.encode(get_uri)
    uri = URI.parse(uri_encode)
    request = Net::HTTP::Get.new(uri)
    request.content_type = 'application/json'
    request['Accept'] = 'application/json'
    request['Authorization'] = "Bearer #{access_token}"
    request['Accept-Language'] = 'ja;q=1'

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end

    response_hash = response.body
    @search_infomations = JSON.parse(response_hash)
  end
end
