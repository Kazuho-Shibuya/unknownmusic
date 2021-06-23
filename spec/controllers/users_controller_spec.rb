require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { FactoryBot.create(:user) }

  describe '#show' do
    before do
      get :show, params: { id: user.id }
    end

    example '正常にレスポンスを返していること' do
      expect(response).to be_successful
    end

    example 'ステータスが200であること' do
      expect(response.status).to eq 200
    end
  end

  describe '#following' do
    before do
      get :following, params: { id: user.id }
    end

    example 'ログインページに遷移すること' do
      expect(response).to redirect_to new_session_url
    end

    example 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end

  describe '#followers' do
    before do
      get :followers, params: { id: user.id }
    end

    example 'ログインページに遷移すること' do
      expect(response).to redirect_to new_session_url
    end

    example 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end
end
