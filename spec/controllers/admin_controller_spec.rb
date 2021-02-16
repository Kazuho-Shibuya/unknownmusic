require 'rails_helper'

RSpec.describe AdminController, type: :controller do
  let(:user) { FactoryBot.create(:user) }

  describe '#destroy' do
    it 'ログインページに遷移すること' do
      delete :destroy, params: { id: user.id }
      expect(response).to redirect_to users_url
    end

    it 'ステータスが302であること' do
      get :destroy, params: { id: user.id }
      expect(response.status).to eq 302
    end
  end
end
