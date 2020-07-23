require 'rails_helper'

RSpec.describe SongsController, type: :controller do
  describe '#search' do
    it '正常にレスポンスを返すこと' do
      get :search
      expect(response).to be_successful
    end

    it 'ステータスが200であること' do
      post :search
      expect(response.status).to eq 200
    end
  end
end
