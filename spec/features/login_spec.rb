require 'rails_helper'

RSpec.feature 'LoginLogout', type: :feature do
  scenario 'ユーザがログイン、ログアウトをする' do
    user = FactoryBot.create(:user)
    user.activate

    login(user)
    expect(current_path).to eq user_path(user)

    logout
    expect(current_path).to eq root_path
  end
end
