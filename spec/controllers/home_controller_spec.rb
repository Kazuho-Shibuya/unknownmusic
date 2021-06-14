require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  let(:user) { FactoryBot.create(:user) }

  describe '#index' do
    before do
      get :index, params: { id: user.id }
    end

    example 'ログインページに遷移すること' do
      expect(response).to redirect_to new_session_url
    end

    example 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end
end
