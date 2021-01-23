require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  let(:user) { FactoryBot.create(:user) }

  describe '#new' do
    before do
      get :new
    end

    it '正常にレスポンスを返すこと' do
      expect(response).to be_successful
    end

    it 'ステータスが200であること' do
      expect(response.status).to eq 200
    end
  end

  describe '#create' do
    before do
      post :create, params: { session: { email: user.email } }
    end

    it '正常にレスポンスを返すこと' do
      expect(response).to be_successful
    end

    it 'ステータスが200であること' do
      expect(response.status).to eq 200
    end
  end

  describe '#destroy' do
    before do
      get :destroy, params: { id: user.id }
    end

    it '正常にレスポンスを返していないこと' do
      expect(response).to_not be_successful
    end

    it 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end
end
