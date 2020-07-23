require 'rails_helper'

RSpec.describe TopsController, type: :controller do
  describe '#top' do
    it '正常にレスポンスを返すこと' do
      get :top
      expect(response).to be_successful
    end

    it 'ステータスが200であること' do
      get :top
      expect(response.status).to eq 200
    end
  end
end
