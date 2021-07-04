require 'rails_helper'

RSpec.describe 'Signup', type: :request do
  describe 'GET #new' do
    example 'ステータスが200であること' do
      get new_session_path
      expect(response).to have_http_status(200)
    end
  end
end
