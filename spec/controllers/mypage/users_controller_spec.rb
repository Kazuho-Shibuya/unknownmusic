require 'rails_helper'

RSpec.describe Mypage::UsersController, type: :controller do
  let(:user) { FactoryBot.create(:user) }
  let(:user_params) { FactoryBot.attributes_for(:user) }

  describe '#edit' do
    before do
      get :edit, params: { id: user.id }
    end

    it '正常にレスポンスを返していること' do
      expect(response).to be_successful
    end

    it 'ステータスが200であること' do
      expect(response.status).to eq 200
    end
  end

  describe '#update' do
    before do
      patch :update, params: { id: user.id, user: user_params }
    end

    it 'ユーザページに遷移すること' do
      expect(response).to redirect_to user_url
    end

    it 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end
end
