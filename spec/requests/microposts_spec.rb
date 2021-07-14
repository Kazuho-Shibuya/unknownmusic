require 'rails_helper'

RSpec.describe 'Microposts', type: :request do
  let(:user) { FactoryBot.create(:user) }

  describe 'GET #index' do
    example 'ステータスが200であること' do
      get microposts_path
      expect(response).to have_http_status(200)
    end
  end
end