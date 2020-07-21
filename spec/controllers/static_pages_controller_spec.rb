require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe '#home' do
    it 'ログインページに遷移すること' do
      get :home
      expect(response).to redirect_to login_url
    end

    it 'ステータスが302であること' do
      get :home
      expect(response.status).to eq 302
    end
  end

  describe '#about' do
    it '正常にレスポンスを返すこと' do
      get :about
      expect(response).to be_successful
    end

    it 'ステータスが200であること' do
      get :about
      expect(response.status).to eq 200
    end
  end

  describe '#search_result' do
    it 'ログインページに遷移すること' do
      post :search_result
      expect(response).to redirect_to login_url
    end

    it 'ステータスが302であること' do
      post :search_result
      expect(response.status).to eq 302
    end
  end
end
