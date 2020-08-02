require 'rails_helper'

RSpec.describe RelationshipsController, type: :controller do
  let(:user) { user = FactoryBot.create(:user) }
  describe '#create' do
    before do
      post :create
    end

    it '正常にレスポンスを返さないこと' do
      expect(response).to_not be_successful
    end

    it 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end

  describe '#destroy' do
    before do
      delete :destroy, params: { id: user.id }
    end

    it '正常にレスポンスを返さないこと' do
      expect(response).to_not be_successful
    end

    it 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end
end
