require 'rails_helper'

RSpec.feature 'User_edit', type: :feature do
  scenario 'ユーザ情報を編集する' do
    user = FactoryBot.create(:user)
    login(user)

    visit edit_user_path(user)

    fill_in '名前', with: '佐藤清'
    fill_in 'メールアドレス', with: 'tester@example.com'
    fill_in 'パスワード', with: 'foobar'
    fill_in 'パスワード（確認）', with: 'foobar'
    click_button '更新する'

    expect(current_path).to eq user_path(user)
    expect(page).to have_content 'プロフィールを更新しました'
  end
end
