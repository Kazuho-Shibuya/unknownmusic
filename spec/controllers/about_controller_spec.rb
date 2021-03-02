require 'rails_helper'

RSpec.describe AboutController, type: :controller do
  describe '#index' do
    before do
      get :index
    end

    it '正常にレスポンスを返すこと' do
      expect(response).to be_successful
    end

    it 'ステータスが200であること' do
      expect(response.status).to eq 200
    end
  end
end
