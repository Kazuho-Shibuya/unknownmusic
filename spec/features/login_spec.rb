require 'rails_helper'

RSpec.feature 'Login', type: :feature do
  scenario 'ユーザがログインをする' do
    user = FactoryBot.create(:user)
    user.activate

    visit root_path
    click_link '始める'

    click_link 'ログイン'
    fill_in 'メールアドレス', with: user.email
    fill_in 'パスワード', with: user.password
    click_button 'ログイン'

    expect(current_path).to eq '/users/1'
  end
end
