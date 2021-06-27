require 'rails_helper'

RSpec.describe 'About', type: :request do
  describe 'GET #index' do
    example 'ステータスが200であること' do
      get about_index_path
      expect(response).to have_http_status(200)
    end
  end
end
