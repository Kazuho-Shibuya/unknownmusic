class Spotify_api
  require 'net/http'
  require 'uri'

  def get_access_token
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
    auth_params['access_token']
  end

  def search(access_token, search_result)
    get_uri = "https://api.spotify.com/v1/search?q=#{search_result}&type=track&market=JP"
    uri_encode = URI.encode(get_uri)
    uri = URI.parse(uri_encode)
    request = Net::HTTP::Get.new(uri)
    request.content_type = 'application/json'
    request['Accept'] = 'application/json'
    request['Authorization'] = "Bearer #{access_token}"
    request['Accept-Language'] = 'ja;q=1'

    req_options = {
      use_ssl: uri.scheme == 'https'
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end

    response_json = response.body
    JSON.parse(response_json)
  end

  def search_id(access_token, search_result)
    get_uri = "https://api.spotify.com/v1/tracks/#{search_result}"
    uri_encode = URI.encode(get_uri)
    uri = URI.parse(uri_encode)
    request = Net::HTTP::Get.new(uri)
    request.content_type = 'application/json'
    request['Accept'] = 'application/json'
    request['Authorization'] = "Bearer #{access_token}"
    request['Accept-Language'] = 'ja;q=1'

    req_options = {
      use_ssl: uri.scheme == 'https'
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end

    response_json = response.body
    JSON.parse(response_json)
  end
end
