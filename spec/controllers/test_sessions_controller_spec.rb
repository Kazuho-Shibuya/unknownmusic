require 'rails_helper'

RSpec.describe TestSessionsController, type: :controller do
  before do
    post :create
  end

  describe '#create' do
    it '正常にレスポンスを返すこと' do
      expect(response).to be_successful
    end

    it 'ステータスが204であること' do
      expect(response.status).to eq 204
    end
  end
end
