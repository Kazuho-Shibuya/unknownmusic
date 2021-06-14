require 'rails_helper'

RSpec.describe Like, type: :model do
  context 'ユーザと投稿が紐づけられている場合' do
    example 'いいねを作成できる' do
      expect(FactoryBot.build(:like)).to be_valid
    end
  end

  context 'ユーザが紐づけられていない場合' do
    example 'いいねを作成できない' do
      like = FactoryBot.build(:like, user_id: nil)
      like.valid?
      expect(like.errors[:user_id]).to include('を入力してください')
    end
  end

  context '投稿が紐づけられていない場合' do
    example 'いいねを作成できない' do
      like = FactoryBot.build(:like, micropost_id: nil)
      like.valid?
      expect(like.errors[:micropost_id]).to include('を入力してください')
    end
  end
end

# == Schema Information
#
# Table name: likes
#
#  id           :bigint           not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  micropost_id :integer          not null
#  user_id      :integer          not null
#
# Indexes
#
#  index_likes_on_micropost_id              (micropost_id)
#  index_likes_on_user_id                   (user_id)
#  index_likes_on_user_id_and_micropost_id  (user_id,micropost_id) UNIQUE
#
