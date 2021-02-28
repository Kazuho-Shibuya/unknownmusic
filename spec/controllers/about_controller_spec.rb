require 'rails_helper'

RSpec.describe AboutController, type: :controller do
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
end
