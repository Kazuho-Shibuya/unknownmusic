require 'rails_helper'

RSpec.describe Like, type: :model do
  context 'ユーザと投稿が紐づけられている場合' do
    it 'いいねを作成できる' do
      expect(FactoryBot.build(:like)).to be_valid
    end
  end

  context 'ユーザが紐づけられていない場合' do
    it 'いいねを作成できない' do
      like = FactoryBot.build(:like, user_id: nil)
      like.valid?
      expect(like.errors[:user_id]).to include('を入力してください')
    end
  end

  context '投稿が紐づけられていない場合' do
    it 'いいねを作成できない' do
      like = FactoryBot.build(:like, micropost_id: nil)
      like.valid?
      expect(like.errors[:micropost_id]).to include('を入力してください')
    end
  end
end
