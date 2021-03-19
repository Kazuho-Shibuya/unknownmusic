require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  let(:user) { FactoryBot.create(:user) }

  describe '#index' do
    before do
      get :index, params: { id: user.id }
    end

    it 'ログインページに遷移すること' do
      expect(response).to redirect_to new_session_url
    end

    it 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end
end
