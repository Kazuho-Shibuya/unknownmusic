require 'rails_helper'

RSpec.describe Micropost, type: :model do
  it 'ユーザID、内容、曲、アーティスト、試聴URLがあれば投稿できる' do
    user = User.new(
      id: '1',
      name: '佐藤太郎',
      email: 'tester@example.com',
      password: 'password'
    )

    micropost = user.microposts.build(
      content: '是非聴いてください',
      song: 'Love so sweet',
      artist: '嵐',
      listening_url: 'https://p.scdn.co/mp3-preview/49846ff4faf7a04f86aeab2b9dc3fd29f18da9e0?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    )
    expect(micropost).to be_valid
  end

  it 'ユーザが紐づけられていないと投稿できない'
  it '内容が空欄だと投稿できない'
  it '曲が空欄だと投稿できない'
  it 'アーティストが空欄だと投稿できない'
  it '試聴URLが空欄だと投稿できない'
  it '内容が101文字以上の場合投稿できる'
  it '内容が100文字以下の場合投稿できない'
end
