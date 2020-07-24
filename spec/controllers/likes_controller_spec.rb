require 'rails_helper'

RSpec.describe LikesController, type: :controller do
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
end
