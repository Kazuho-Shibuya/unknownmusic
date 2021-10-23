require 'rails_helper'

RSpec.describe 'Relationships', type: :request do
  let(:user) { FactoryBot.create(:user) }

  describe 'POST #create' do
    before do
      post relationships_path
    end

    example 'ログインページにリダイレクトすること' do
      expect(response).to redirect_to new_session_path
    end

    example 'ステータスが302であること' do
      expect(response).to have_http_status(302)
    end
  end

  describe 'DELETE #destroy' do
    before do
      delete relationship_path user.id
    end

    example 'ログインページにリダイレクトすること' do
      expect(response).to redirect_to new_session_path
    end

    example 'ステータスが302であること' do
      expect(response).to have_http_status(302)
    end
  end
end
