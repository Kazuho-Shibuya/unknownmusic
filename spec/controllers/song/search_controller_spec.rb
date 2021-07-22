require 'rails_helper'

RSpec.describe Song::SearchController, type: :controller do
  describe '#create' do
    before do
      post :create
    end

    example 'ログインページに遷移すること' do
      expect(response).to redirect_to new_session_url
    end

    example 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end
end
