require 'rails_helper'

RSpec.describe Micropost, type: :model do
  it '内容、曲、アーティスト、試聴URLがあれば投稿できる' do
    expect(FactoryBot.build(:micropost)).to be_valid
  end

  it 'ユーザが紐づけられていないと投稿できない' do
    micropost = FactoryBot.build(:micropost, user_id: nil)
    micropost.valid?
    expect(micropost.errors[:user_id]).to include('を入力してください')
  end

  it '内容が空欄だと投稿できない' do
    micropost = FactoryBot.build(:micropost, content: nil)
    micropost.valid?
    expect(micropost.errors[:content]).to include('を入力してください')
  end

  it '曲が空欄だと投稿できない' do
    micropost = FactoryBot.build(:micropost, song: nil)
    micropost.valid?
    expect(micropost.errors[:song]).to include('を入力してください')
  end

  it 'アーティストが空欄だと投稿できない' do
    micropost = FactoryBot.build(:micropost, artist: nil)
    micropost.valid?
    expect(micropost.errors[:artist]).to include('を入力してください')
  end

  it '試聴URLが空欄だと投稿できない' do
    micropost = FactoryBot.build(:micropost, listening_url: nil)
    micropost.valid?
    expect(micropost.errors[:listening_url]).to include('を入力してください')
  end

  it '内容が100文字以内の場合投稿できる' do
    micropost = FactoryBot.build(:micropost, content: 'a' * 100)
    expect(micropost).to be_valid
  end

  it '内容が101文字以上の場合投稿できない' do
    micropost = FactoryBot.build(:micropost, content: 'a' * 101)
    micropost.valid?
    expect(micropost.errors[:content]).to include('は100文字以内で入力してください')
  end
end
