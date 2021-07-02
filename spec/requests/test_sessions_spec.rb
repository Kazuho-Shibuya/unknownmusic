require 'rails_helper'

RSpec.describe 'TestSessions', type: :request do
  describe 'POST #create' do
    example 'ステータスが204であること' do
      post test_sessions_path
      expect(response).to have_http_status(204)
    end
  end
end
