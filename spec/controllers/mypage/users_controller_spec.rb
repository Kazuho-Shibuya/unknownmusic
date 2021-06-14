require 'rails_helper'

RSpec.describe Mypage::UsersController, type: :controller do
  let(:user) { FactoryBot.create(:user) }
  let(:user_params) { FactoryBot.attributes_for(:user) }
  before do
    allow(controller).to receive(:current_user).and_return(user)
  end

  describe '#edit' do
    before do
      get :edit
    end

    example '正常にレスポンスを返していること' do
      expect(response).to be_successful
    end

    example 'ステータスが200であること' do
      expect(response.status).to eq 200
    end
  end

  describe '#update' do
    before do
      patch :update, params: { user: user_params }
    end

    example 'ユーザページに遷移すること' do
      expect(response).to redirect_to user_url(user)
    end

    example 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end
end
