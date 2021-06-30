require 'rails_helper'

RSpec.describe 'AccountActivations', type: :request do
  let(:user) { FactoryBot.create(:user) }

  describe 'GET #edit' do
    before do
      get edit_account_activation_path user.id
    end

    example 'トップページにリダイレクトすること' do
      expect(response).to redirect_to root_url
    end

    example 'ステータスが302であること' do
      expect(response).to have_http_status(302)
    end
  end
end
