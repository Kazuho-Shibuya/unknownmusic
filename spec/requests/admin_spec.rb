require 'rails_helper'

RSpec.describe 'Admin', type: :request do
  let(:user) { FactoryBot.create(:user) }

  describe 'DELETE #destroy' do
    before do
      delete admin_path user.id
    end

    example 'ログインページにリダイレクトすること' do
      expect(response).to redirect_to new_session_path
    end

    example 'ステータスが302であること' do
      expect(response).to have_http_status(302)
    end
  end
end
