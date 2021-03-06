require 'rails_helper'

RSpec.describe Song::SearchController, type: :controller do
  describe '#index' do
    before do
      get :index
    end

    example '正常にレスポンスを返すこと' do
      expect(response).to be_successful
    end

    example 'ステータスが200であること' do
      expect(response.status).to eq 200
    end
  end

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
