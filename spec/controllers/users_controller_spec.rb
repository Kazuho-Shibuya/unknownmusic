require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe '#index' do
    it 'ログインページに遷移すること' do
      get :index
      expect(response).to redirect_to login_url
    end

    it 'ステータスが302であること' do
      get :index
      expect(response.status).to eq 302
    end
  end

  describe '#edit' do
    it 'ログインページに遷移すること' do
      user = FactoryBot.create(:user)
      get :edit, params: { id: user.id }
      expect(response).to redirect_to login_url
    end

    it 'ステータスが302であること' do
      user = FactoryBot.create(:user)
      get :edit, params: { id: user.id }
      expect(response.status).to eq 302
    end
  end

  describe '#update' do
    it 'ログインページに遷移すること' do
      user = FactoryBot.create(:user)
      patch :update, params: { id: user.id }
      expect(response).to redirect_to login_url
    end

    it 'ステータスが302であること' do
      user = FactoryBot.create(:user)
      patch :update, params: { id: user.id }
      expect(response.status).to eq 302
    end
  end

  describe '#destroy' do
    it 'ログインページに遷移すること' do
      user = FactoryBot.create(:user)
      delete :destroy, params: { id: user.id }
      expect(response).to redirect_to login_url
    end

    it 'ステータスが302であること' do
      user = FactoryBot.create(:user)
      get :destroy, params: { id: user.id }
      expect(response.status).to eq 302
    end
  end

  describe '#following' do
    it 'ログインページに遷移すること' do
      user = FactoryBot.create(:user)
      get :following, params: { id: user.id }
      expect(response).to redirect_to login_url
    end

    it 'ステータスが302であること' do
      user = FactoryBot.create(:user)
      get :following, params: { id: user.id }
      expect(response.status).to eq 302
    end
  end

  describe '#followers' do
    it 'ログインページに遷移すること' do
      user = FactoryBot.create(:user)
      get :followers, params: { id: user.id }
      expect(response).to redirect_to login_url
    end

    it 'ステータスが302であること' do
      user = FactoryBot.create(:user)
      get :followers, params: { id: user.id }
      expect(response.status).to eq 302
    end
  end
end
