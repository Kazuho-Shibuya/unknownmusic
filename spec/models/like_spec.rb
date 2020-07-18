require 'rails_helper'

RSpec.describe Like, type: :model do
  it 'ユーザID、マイクロポストIDがあればいいねできる' do
    user = User.create(
      id: '1',
      name: '佐藤太郎',
      email: 'tester@example.com',
      password: 'password'
    )

    micropost = user.microposts.create(
      content: '是非聴いてください',
      song: 'Love so sweet',
      artist: '嵐',
      listening_url: 'https://p.scdn.co/mp3-preview/49846ff4faf7a04f86aeab2b9dc3fd29f18da9e0?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    )
    like = micropost.favorite(user)
    expect(like).to be_valid
  end

  it 'ユーザが紐づけられていないといいねできない' do
    like = Like.new(user_id: nil)
    like.valid?
    expect(like.errors[:user_id]).to include('を入力してください')
  end

  it 'マイクロポストが紐づけられていないといいねできない' do
    like = Like.new(micropost_id: nil)
    like.valid?
    expect(like.errors[:micropost_id]).to include('を入力してください')
  end
end
