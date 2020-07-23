require 'rails_helper'

RSpec.describe TestSessionsController, type: :controller do
  describe '#create' do
    it '正常にレスポンスを返すこと' do
      post :create
      expect(response).to be_successful
    end

    it 'ステータスが204であること' do
      post :create
      expect(response.status).to eq 204
    end
  end
end
