require 'rails_helper'

RSpec.describe Micropost, type: :model do
  context '内容、曲、アーティスト、試聴URLがある場合' do
    example '投稿できる' do
      expect(FactoryBot.build(:micropost)).to be_valid
    end
  end

  context 'ユーザが紐づけられていない場合' do
    example '投稿できない' do
      micropost = FactoryBot.build(:micropost, user_id: nil)
      micropost.valid?
      expect(micropost.errors[:user_id]).to include('を入力してください')
    end
  end

  context '内容が空欄の場合' do
    example '投稿できない' do
      micropost = FactoryBot.build(:micropost, content: nil)
      micropost.valid?
      expect(micropost.errors[:content]).to include('を入力してください')
    end
  end

  context '内容が70文字以内の場合' do
    example '投稿できる' do
      micropost = FactoryBot.build(:micropost, content: 'あ' * 70)
      expect(micropost).to be_valid
    end
  end

  context '内容が71文字以上の場合' do
    example '投稿できない' do
      micropost = FactoryBot.build(:micropost, content: 'あ' * 71)
      micropost.valid?
      expect(micropost.errors[:content]).to include('は70文字以内で入力してください')
    end
  end
end

# == Schema Information
#
# Table name: microposts
#
#  id            :bigint           not null, primary key
#  artist        :string(255)
#  content       :text(65535)
#  likes_count   :integer          default(0), not null
#  listening_url :text(65535)
#  song          :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :bigint
#
# Indexes
#
#  index_microposts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
