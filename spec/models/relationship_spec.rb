require 'rails_helper'

RSpec.describe Relationship, type: :model do
  it 'relationshipが作成できる' do
    user = User.create(
      id: '1',
      name: '佐藤太郎',
      email: 'tester@example.com',
      password: 'password'
    )
    other_user = User.create(
      id: '2',
      name: '田中圭介',
      email: 'tester2@example.com',
      password: 'password'
    )
    relationship = user.active_relationships.create!(followed_id: other_user.id)
    expect(relationship).to be_valid
  end
  it 'follower_idがないとrelationshipが作成できない' do
    relationship = Relationship.new(follower_id: nil)
    relationship.valid?
    expect(relationship.errors[:follower_id]).to include('を入力してください')
  end
  it 'followed_idがないとrelationshipが作成できない' do
    relationship = Relationship.new(followed_id: nil)
    relationship.valid?
    expect(relationship.errors[:followed_id]).to include('を入力してください')
  end
end
