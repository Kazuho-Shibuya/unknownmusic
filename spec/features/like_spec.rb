require 'rails_helper'

RSpec.feature 'Like', type: :feature do
  scenario 'ユーザがいいね、いいね解除する' do
    user = FactoryBot.create(:user)
    FactoryBot.create(:micropost, user_id: user.id, content: 'テスト投稿')
    login(user)
    expect(page).to have_content('テスト投稿')
    expect do
      first('.btn-like-non').click
    end.to change(Like, :count).by(1)
    expect do
      first('.btn-like').click
    end.to change(Like, :count).by(-1)
  end
end
