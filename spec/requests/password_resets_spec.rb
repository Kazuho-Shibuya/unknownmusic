require 'rails_helper'

RSpec.describe 'PasswordResets', type: :request do
  let(:user) { FactoryBot.create(:user) }

  describe 'GET #new' do
    example 'ステータスが200であること' do
      get new_password_reset_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST #create' do
    example 'ステータスが200であること' do
      post password_resets_path, params: { password_reset: { email: user.email } }
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET #edit' do
    before do
      get edit_password_reset_path user.id
    end

    example 'トップページにリダイレクトすること' do
      expect(response).to redirect_to root_url
    end

    example 'ステータスが302であること' do
      expect(response).to have_http_status(302)
    end
  end

  describe 'PATCH #update' do
    example 'ステータスが302であること' do
      patch password_reset_path user.id
      expect(response.status).to eq 302
    end
  end
end
