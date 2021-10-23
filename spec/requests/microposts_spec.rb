require 'rails_helper'

RSpec.describe 'Microposts', type: :request do
  let(:user) { FactoryBot.create(:user) }

  describe 'GET #index' do
    example 'ステータスが200であること' do
      get microposts_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST #create' do
    before do
      post microposts_path
    end

    example 'ログインページにリダイレクトすること' do
      expect(response).to redirect_to new_session_path
    end

    example 'ステータスが302であること' do
      expect(response).to have_http_status(302)
    end
  end

  describe 'DELETE #destroy' do
    before do
      delete micropost_path user.id
    end

    example 'ログインページにリダイレクトすること' do
      expect(response).to redirect_to new_session_path
    end

    example 'ステータスが302であること' do
      expect(response).to have_http_status(302)
    end
  end
end
