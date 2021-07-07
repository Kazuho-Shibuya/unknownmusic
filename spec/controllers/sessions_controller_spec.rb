require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  let(:user) { FactoryBot.create(:user) }

  describe '#destroy' do
    before do
      get :destroy, params: { id: user.id }
    end

    example '正常にレスポンスを返していないこと' do
      expect(response).to_not be_successful
    end

    example 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end
end
