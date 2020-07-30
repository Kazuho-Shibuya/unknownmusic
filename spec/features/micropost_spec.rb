require 'rails_helper'

RSpec.feature 'Micropost', type: :feature do
  scenario '曲を投稿する' do
    user = FactoryBot.create(:user)
    login(user)
    click_link 'ホーム'
    find('.btn-songs-search').click
    fill_in 'search', with: '小田和正 たしかなこと'
    click_button '検索'
    click_button '投稿', match: :first
    fill_in 'micropost_content', with: 'テスト投稿'

    click_button 'Post'
    expect(page).to have_content('小田和正')
    expect(page).to have_content('たしかなこと')
  end
end
