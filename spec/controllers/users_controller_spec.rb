require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { FactoryBot.create(:user) }
  let(:user_params) { FactoryBot.attributes_for(:user) }

  describe '#index' do
    before do
      get :index
    end

    it 'ログインページに遷移すること' do
      expect(response).to redirect_to new_session_url
    end

    it 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end

  describe '#show' do
    before do
      get :show, params: { id: user.id }
    end

    it '正常にレスポンスを返していること' do
      expect(response).to be_successful
    end

    it 'ステータスが200であること' do
      expect(response.status).to eq 200
    end
  end

  describe '#destroy' do
    it 'ログインページに遷移すること' do
      delete :destroy, params: { id: user.id }
      expect(response).to redirect_to new_session_url
    end

    it 'ステータスが302であること' do
      get :destroy, params: { id: user.id }
      expect(response.status).to eq 302
    end
  end

  describe '#following' do
    before do
      get :following, params: { id: user.id }
    end

    it 'ログインページに遷移すること' do
      expect(response).to redirect_to new_session_url
    end

    it 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end

  describe '#followers' do
    before do
      get :followers, params: { id: user.id }
    end

    it 'ログインページに遷移すること' do
      expect(response).to redirect_to new_session_url
    end

    it 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end

  describe '#home' do
    before do
      get :home, params: { id: user.id }
    end

    it 'ログインページに遷移すること' do
      expect(response).to redirect_to new_session_url
    end

    it 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end
end
