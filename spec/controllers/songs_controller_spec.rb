require 'rails_helper'

RSpec.describe SongsController, type: :controller do
  describe '#search' do
    before do
      get :search
    end

    it '正常にレスポンスを返すこと' do
      expect(response).to be_successful
    end

    it 'ステータスが200であること' do
      expect(response.status).to eq 200
    end
  end
end
