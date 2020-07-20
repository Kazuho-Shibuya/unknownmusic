require 'rails_helper'

RSpec.describe Relationship, type: :model do
  it 'relationshipが作成できる' do
    user1 = FactoryBot.create(:user)
    user2 = FactoryBot.create(:user)
    expect(FactoryBot.build(:relationship, follower_id: user1.id, followed_id: user2.id)).to be_valid
  end

  it 'follower_idがないとrelationshipが作成できない' do
    relationship = FactoryBot.build(:relationship, follower_id: nil)
    relationship.valid?
    expect(relationship.errors[:follower_id]).to include('を入力してください')
  end
  it 'followed_idがないとrelationshipが作成できない' do
    relationship = FactoryBot.build(:relationship, followed_id: nil)
    relationship.valid?
    expect(relationship.errors[:followed_id]).to include('を入力してください')
  end
end
