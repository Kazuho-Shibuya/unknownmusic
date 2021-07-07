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
end
