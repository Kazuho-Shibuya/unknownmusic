require 'rails_helper'

RSpec.describe 'Sessions', type: :request do
  let(:user) { FactoryBot.create(:user) }

  describe 'GET #new' do
    example 'ステータスが200であること' do
      get new_session_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST #create' do
    example 'ステータスが200であること' do
      post sessions_path, params: { session: { email: user.email } }
      expect(response).to have_http_status(200)
    end
  end

  describe 'DELETE #destroy' do
    before do
      delete session_path user
    end

    example 'トップページにリダイレクトすること' do
      expect(response).to redirect_to root_url
    end

    example 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end
end
