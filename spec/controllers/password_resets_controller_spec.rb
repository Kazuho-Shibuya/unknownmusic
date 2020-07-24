require 'rails_helper'

RSpec.describe PasswordResetsController, type: :controller do
  describe '#new' do
    it '正常にレスポンスを返すこと' do
      get :new
      expect(response).to be_successful
    end

    it 'ステータスが200であること' do
      get :new
      expect(response.status).to eq 200
    end
  end

  describe '#create' do
    it '正常にレスポンスを返さないこと' do
      user = FactoryBot.create(:user)
      post :create, params: { password_reset: { email: user.email } }
      expect(response).to_not be_successful
    end

    it 'ステータスが302であること' do
      user = FactoryBot.create(:user)
      post :create, params: { password_reset: { email: user.email } }
      expect(response.status).to eq 302
    end
  end

  describe '#edit' do
    it '正常にレスポンスを返さないこと' do
      get :edit
      expect(response).to_not be_successful
    end

    it 'ステータスが302であること' do
      get :edit
      expect(response.status).to eq 302
    end
  end

  describe '#update' do
    it '正常にレスポンスを返さないこと' do
      user = FactoryBot.create(:user)
      patch :update, params: { id: user.id }
      expect(response).to_not be_successful
    end

    it 'ステータスが302であること' do
      user = FactoryBot.create(:user)
      patch :update, params: { id: user.id }
      expect(response.status).to eq 302
    end
  end
end
