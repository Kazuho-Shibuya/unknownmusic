require 'rails_helper'

RSpec.describe 'Song/Search', type: :request do
  describe 'GET #index' do
    example 'ステータスが200であること' do
      get song_search_index_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST #create' do
    before do
      post song_search_index_path
    end

    example 'ログインページにリダイレクトすること' do
      expect(response).to redirect_to new_session_url
    end

    example 'ステータスが302であること' do
      expect(response).to have_http_status(302)
    end
  end
end
