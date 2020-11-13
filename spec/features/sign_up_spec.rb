require 'rails_helper'

RSpec.feature 'Sign_up', type: :feature do
  scenario 'ゲストがユーザ登録をする' do
    user = FactoryBot.build(:user)

    visit root_path
    click_link '始める'

    expect do
      click_link '新規登録'
      fill_in '名前（ニックネーム可）', with: user.name
      fill_in 'メールアドレス', with: user.email
      fill_in 'パスワード（６文字以上）', with: user.password
      fill_in 'パスワード（確認）', with: user.password
      click_button '登録する'
    end.to change(User, :count).by(1)

    expect(page).to have_content 'メールを確認して、アカウントを有効にしてください。'
    expect(current_path).to eq root_path
  end
end
