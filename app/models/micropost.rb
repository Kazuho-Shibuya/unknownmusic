class Micropost < ApplicationRecord
  require 'nkf'

  attr_accessor :search_result_id

  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :favorite_users, through: :likes, source: :user

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 70 }

  scope :sorted, -> { order(created_at: :desc) }

  # 投稿をいいねする
  def favorite(user)
    likes.create(user_id: user.id)
  end

  # 投稿のいいねを解除する
  def unfavorite(user)
    likes.find_by(user_id: user.id).destroy
  end

  # 現在のユーザがいいねしていたらtrueを返す
  def favorite?(user)
    favorite_users.include?(user)
  end

  # 投稿内容を検索する
  def self.search(search_micropost)
    return all unless search_micropost

    column = 'content LIKE ? OR content LIKE ? OR song LIKE ? OR song LIKE ? OR artist LIKE ? OR artist LIKE ?'
    value = "%#{search_micropost}%"
    if search_micropost.is_japanese?
      if search_micropost.is_kana?
        change_romaji = search_micropost.to_roman
      elsif search_micropost.is_hira?
        change_romaji = search_micropost.to_roma
      else
        change_hira = search_micropost.to_kanhira
        change_romaji = change_hira.to_roma
      end
      value_romaji = "%#{change_romaji}%"
      where([column, value, value_romaji, value, value_romaji, value, value_romaji])
    else
      change_hira = search_micropost.to_kana
      change_kana = NKF.nkf('-w --katakana', change_hira)
      value_kana = "%#{change_kana}%"
      where([column, value, value_kana, value, value_kana, value, value_kana])
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
