require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
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
    it '正常にレスポンスを返すこと' do
      user = FactoryBot.create(:user)
      post :create, params: { session: { email: user.email } }
      expect(response).to be_successful
    end

    it 'ステータスが200であること' do
      user = FactoryBot.create(:user)
      post :create, params: { session: { email: user.email } }
      expect(response.status).to eq 200
    end
  end

  describe '#destroy' do
    it '正常にレスポンスを返していないこと' do
      get :destroy
      expect(response).to_not be_successful
    end

    it 'ステータスが302であること' do
      get :destroy
      expect(response.status).to eq 302
    end
  end
end
