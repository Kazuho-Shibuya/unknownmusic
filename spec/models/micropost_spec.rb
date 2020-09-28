require 'rails_helper'

RSpec.describe Micropost, type: :model do
  context '内容、曲、アーティスト、試聴URLがある場合' do
    it '投稿できる' do
      expect(FactoryBot.build(:micropost)).to be_valid
    end
  end

  context 'ユーザが紐づけられていない場合' do
    it '投稿できない' do
      micropost = FactoryBot.build(:micropost, user_id: nil)
      micropost.valid?
      expect(micropost.errors[:user_id]).to include('を入力してください')
    end
  end

  context '内容が空欄の場合' do
    it '投稿できない' do
      micropost = FactoryBot.build(:micropost, content: nil)
      micropost.valid?
      expect(micropost.errors[:content]).to include('を入力してください')
    end
  end

  context '曲が空欄の場合' do
    it '投稿できない' do
      micropost = FactoryBot.build(:micropost, song: nil)
      micropost.valid?
      expect(micropost.errors[:song]).to include('を入力してください')
    end
  end

  context 'アーティストが空欄の場合' do
    it '投稿できない' do
      micropost = FactoryBot.build(:micropost, artist: nil)
      micropost.valid?
      expect(micropost.errors[:artist]).to include('を入力してください')
    end
  end

  context '試聴URLが空欄の場合' do
    it '投稿できない' do
      micropost = FactoryBot.build(:micropost, listening_url: nil)
      micropost.valid?
      expect(micropost.errors[:listening_url]).to include('を入力してください')
    end
  end

  context '内容が40文字以内の場合' do
    it '投稿できる' do
      micropost = FactoryBot.build(:micropost, content: 'あ' * 40)
      expect(micropost).to be_valid
    end
  end

  context '内容が41文字以上の場合' do
    it '投稿できない' do
      micropost = FactoryBot.build(:micropost, content: 'あ' * 41)
      micropost.valid?
      expect(micropost.errors[:content]).to include('は40文字以内で入力してください')
    end
  end
end
