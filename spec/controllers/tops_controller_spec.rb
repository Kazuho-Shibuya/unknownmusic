require 'rails_helper'

RSpec.describe TopsController, type: :controller do
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
end
