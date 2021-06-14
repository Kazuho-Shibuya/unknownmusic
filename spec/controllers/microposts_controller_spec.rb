require 'rails_helper'

RSpec.describe MicropostsController, type: :controller do
  let(:user) { FactoryBot.create(:user) }

  describe '#create' do
    before do
      post :create
    end

    example '正常にレスポンスを返さないこと' do
      expect(response).to_not be_successful
    end

    example 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end

  describe '#destroy' do
    before do
      delete :destroy, params: { id: user.id }
    end

    example '正常にレスポンスを返さないこと' do
      expect(response).to_not be_successful
    end

    example 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end

  describe '#index' do
    before do
      get :index
    end

    example '正常にレスポンスを返すこと' do
      expect(response).to be_successful
    end

    example 'ステータスが200であること' do
      expect(response.status).to eq 200
    end
  end
end
