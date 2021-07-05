require 'rails_helper'

RSpec.describe 'Signup', type: :request do
  describe 'GET #new' do
    example 'ステータスが200であること' do
      get new_session_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST #create' do
    context '有効な属性値の場合' do
      let(:user_params) { FactoryBot.attributes_for(:user) }

      example 'ユーザを作成できること' do
        expect do
          post signups_path, params: { user: user_params }
        end.to change(User, :count).by(1)
      end

      example 'ステータスが302であること' do
        post signups_path, params: { user: user_params }
        expect(response).to have_http_status(302)
      end
    end

    context '無効な属性値の場合' do
      let(:user_params) { FactoryBot.attributes_for(:user, :invalid) }

      example 'ユーザを作成できないこと' do
        expect do
          post signups_path, params: { user: user_params }
        end.to_not change(User, :count)
      end

      example 'ステータスが200であること' do
        post signups_path, params: { user: user_params }
        expect(response).to have_http_status(200)
      end
    end
  end
end
