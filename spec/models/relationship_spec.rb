require 'rails_helper'

RSpec.describe Relationship, type: :model do
  let(:user) { FactoryBot.create(:user) }
  context 'フォローユーザとフォロワーユーザがいる場合' do
    it 'フォローフォロワーの関係が作成できる' do
      followed_user = user
      follower_user = user
      relationship = FactoryBot.build(:relationship, followed_id: followed_user.id,
                                                     follower_id: follower_user.id)
      expect(relationship).to be_valid
    end
  end

  context 'フォローユーザがいない場合' do
    it 'フォローフォロワーの関係が作成できない' do
      relationship = FactoryBot.build(:relationship, followed_id: nil)
      relationship.valid?
      expect(relationship.errors[:followed_id]).to include('を入力してください')
    end
  end

  context 'フォロワーユーザがいない場合' do
    it 'フォローフォロワーの関係が作成できない' do
      relationship = FactoryBot.build(:relationship, follower_id: nil)
      relationship.valid?
      expect(relationship.errors[:follower_id]).to include('を入力してください')
    end
  end
end

# == Schema Information
#
# Table name: relationships
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  followed_id :integer
#  follower_id :integer
#
# Indexes
#
#  index_relationships_on_followed_id                  (followed_id)
#  index_relationships_on_follower_id                  (follower_id)
#  index_relationships_on_follower_id_and_followed_id  (follower_id,followed_id) UNIQUE
#
