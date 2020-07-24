require 'rails_helper'

RSpec.describe MicropostsController, type: :controller do
  describe '#create' do
    it '正常にレスポンスを返さないこと' do
      post :create
      expect(response).to_not be_successful
    end

    it 'ステータスが302であること' do
      post :create
      expect(response.status).to eq 302
    end
  end

  describe '#destroy' do
    it '正常にレスポンスを返さないこと' do
      user = FactoryBot.create(:user)
      delete :destroy, params: { id: user.id }
      expect(response).to_not be_successful
    end

    it 'ステータスが302であること' do
      user = FactoryBot.create(:user)
      delete :destroy, params: { id: user.id }
      expect(response.status).to eq 302
    end
  end

  describe '#index' do
    it '正常にレスポンスを返すこと' do
      get :index
      expect(response).to be_successful
    end

    it 'ステータスが200であること' do
      get :index
      expect(response.status).to eq 200
    end
  end
end
