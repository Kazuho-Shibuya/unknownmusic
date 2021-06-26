require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let(:user) { FactoryBot.create(:user) }

  describe 'GET #index' do
    before do
      get users_path
    end

    example 'ログインページにリダイレクトすること' do
      expect(response).to redirect_to new_session_url
    end

    example 'ステータスが302であること' do
      expect(response).to have_http_status(302)
    end
  end

  describe 'GET #show' do
    example 'ステータスが200であること' do
      get user_path user.id
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET #following' do
    before do
      get following_user_path user.id
    end

    example 'ログインページにリダイレクトすること' do
      expect(response).to redirect_to new_session_url
    end

    example 'ステータスが302であること' do
      expect(response).to have_http_status(302)
    end
  end

  describe 'GET #followers' do
    before do
      get followers_user_path user.id
    end

    example 'ログインページにリダイレクトすること' do
      expect(response).to redirect_to new_session_url
    end

    example 'ステータスが302であること' do
      expect(response).to have_http_status(302)
    end
  end
end
