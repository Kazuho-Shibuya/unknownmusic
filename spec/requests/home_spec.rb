require 'rails_helper'

RSpec.describe 'Home', type: :request do
  describe 'GET #index' do
    before do
      get home_index_path
    end

    example 'ログインページにリダイレクトすること' do
      expect(response).to redirect_to new_session_url
    end

    example 'ステータスが302であること' do
      expect(response).to have_http_status(302)
    end
  end
end
