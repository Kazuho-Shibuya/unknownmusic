require 'rails_helper'

RSpec.describe AccountActivationsController, type: :controller do
  describe '#edit' do
    it '正常にレスポンスを返さないこと' do
      user = FactoryBot.create(:user)
      get :edit, params: { id: user.id }
      expect(response).to_not be_successful
    end

    it 'ステータスが302であること' do
      user = FactoryBot.create(:user)
      get :edit, params: { id: user.id }
      expect(response.status).to eq 302
    end
  end
end
