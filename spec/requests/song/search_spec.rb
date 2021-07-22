require 'rails_helper'

RSpec.describe 'Song/Search', type: :request do
  describe 'GET #index' do
    example 'ステータスが200であること' do
      get song_search_index_path
      expect(response).to have_http_status(200)
    end
  end
end
