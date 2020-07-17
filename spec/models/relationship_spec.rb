require 'rails_helper'

RSpec.describe Relationship, type: :model do
  it 'relationshipが作成できる'
  it 'follower_idがないとrelationshipが作成できない'
  it 'followed_idがないとrelationshipが作成できない'
end
