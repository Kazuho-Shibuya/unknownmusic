require 'rails_helper'

RSpec.describe 'Mypage/Users', type: :request do
  describe 'GET #edit' do
    before do
      get edit_mypage_users_path
    end

    example 'ログインページにリダイレクトすること' do
      expect(response).to redirect_to new_session_url
    end

    example 'ステータスが302であること' do
      expect(response).to have_http_status(302)
    end
  end

  describe 'PATCH #update' do
    before do
      patch mypage_users_path
    end

    example 'ログインページにリダイレクトすること' do
      expect(response).to redirect_to new_session_url
    end

    example 'ステータスが302であること' do
      expect(response).to have_http_status(302)
    end
  end
end
