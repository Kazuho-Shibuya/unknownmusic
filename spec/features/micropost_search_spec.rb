require 'rails_helper'

RSpec.feature 'Micropost_search', type: :feature do
  scenario '投稿を検索する' do
    user = FactoryBot.create(:user)
    FactoryBot.create(:micropost, user_id: user.id, content: '検索テスト')
    login(user)
    fill_in 'search', with: '検索テスト'
    click_button '検索'
    expect(page).to have_content('検索テスト')
  end
end
