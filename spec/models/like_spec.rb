require 'rails_helper'

RSpec.describe Like, type: :model do
  it 'likeが作成できる' do
    expect(FactoryBot.build(:like)).to be_valid
  end

  it 'ユーザが紐づけられていないといいねできない' do
    like = FactoryBot.build(:like, user_id: nil)
    like.valid?
    expect(like.errors[:user_id]).to include('を入力してください')
  end

  it 'マイクロポストが紐づけられていないといいねできない' do
    like = FactoryBot.build(:like, micropost_id: nil)
    like.valid?
    expect(like.errors[:micropost_id]).to include('を入力してください')
  end
end
