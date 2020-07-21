require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe '#home' do
    it 'ログインしていない場合ステータスが302であること' do
      get :home
      expect(response.status).to eq 302
    end
    it 'ログインしていない場合ログインページに遷移することを確認' do
      get :home
      expect(response).to redirect_to login_url
    end
  end
end
