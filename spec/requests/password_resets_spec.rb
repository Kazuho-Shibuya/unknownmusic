require 'rails_helper'

RSpec.describe 'PasswordResets', type: :request do
  let(:user) { FactoryBot.create(:user) }

  describe 'GET #new' do
    example 'ステータスが200であること' do
      get new_password_reset_path
      expect(response).to have_http_status(200)
    end
  end
end
