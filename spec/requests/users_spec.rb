require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let(:user) { FactoryBot.create(:user) }

  describe 'GET #index' do
    before do
      get users_path
    end

    example 'ログインページにリダイレクトされること' do
      expect(response).to redirect_to new_session_url
    end

    example 'ステータスが302であること' do
      expect(response).to have_http_status(302)
    end
  end

  describe 'GET #show' do
  end

  describe 'GET #following' do
  end

  describe 'GET #followers' do
  end
end
