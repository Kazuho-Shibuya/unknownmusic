require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe '#top' do
    before do
      get :top
    end

    it '正常にレスポンスを返すこと' do
      expect(response).to be_successful
    end

    it 'ステータスが200であること' do
      expect(response.status).to eq 200
    end
  end

  describe '#about' do
    before do
      get :about
    end

    it '正常にレスポンスを返すこと' do
      expect(response).to be_successful
    end

    it 'ステータスが200であること' do
      expect(response.status).to eq 200
    end
  end

  describe '#search_result' do
    before do
      post :search_result
    end

    it 'ログインページに遷移すること' do
      expect(response).to redirect_to login_url
    end

    it 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end
end
