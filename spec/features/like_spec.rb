require 'rails_helper'

RSpec.feature 'Like', type: :feature do
  scenario 'ユーザがいいねする' do
    user = FactoryBot.create(:user)
    micropost = FactoryBot.create(:micropost, user_id: user.id, content: 'テスト投稿')
    login(user)

    expect(page).to have_content('テスト投稿')
    expect do
      first('.btn').click
    end.to change(Like, :count).by(1)
  end
end
