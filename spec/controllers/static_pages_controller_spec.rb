require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe '#search_result' do
    before do
      post :search_result
    end

    it 'ログインページに遷移すること' do
      expect(response).to redirect_to new_session_url
    end

    it 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end
end
