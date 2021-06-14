require 'rails_helper'

RSpec.describe TopController, type: :controller do
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
end
