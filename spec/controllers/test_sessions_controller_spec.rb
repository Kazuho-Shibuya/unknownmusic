require 'rails_helper'

RSpec.describe TestSessionsController, type: :controller do
  describe '#create' do
    before do
      post :create
    end

    example '正常にレスポンスを返すこと' do
      expect(response).to be_successful
    end

    example 'ステータスが204であること' do
      expect(response.status).to eq 204
    end
  end
end
