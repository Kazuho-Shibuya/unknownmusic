require 'rails_helper'

RSpec.feature 'Like', type: :feature do
  scenario 'ユーザがフォロー、フォロー解除する' do
    user = FactoryBot.create(:user)
    FactoryBot.create(:user, name: '佐藤清')
    login(user)
    visit users_path
    expect(page).to have_link('佐藤清')
    expect(page).to have_button('フォロー')
    click_button 'フォロー', match: :first
    visit following_user_path(user)
    expect(page).to have_link('佐藤清')
    visit users_path
    expect(page).to have_link('佐藤清')
    expect(page).to have_button('フォロー解除')
    click_button 'フォロー解除', match: :first
    visit following_user_path(user)
    expect(page).to_not have_link('佐藤清')
  end
end
