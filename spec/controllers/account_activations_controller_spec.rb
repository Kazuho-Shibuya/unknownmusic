require 'rails_helper'

RSpec.describe AccountActivationsController, type: :controller do
  let(:user) { FactoryBot.create(:user) }

  describe '#edit' do
    before do
      get :edit, params: { id: user.id }
    end

    example '正常にレスポンスを返さないこと' do
      expect(response).to_not be_successful
    end

    example 'ステータスが302であること' do
      expect(response.status).to eq 302
    end
  end
end
