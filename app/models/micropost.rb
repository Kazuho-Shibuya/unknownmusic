class Micropost < ApplicationRecord
  require 'nkf'
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :favorite_users, through: :likes, source: :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :artist, presence: { message: 'を検索してください' }
  validates :song, presence: { message: 'を検索してください' }
  validates :listening_url, presence: { message: 'を検索してください' }
  validates :content, presence: true, length: { maximum: 70 }

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

  def self.search(search)
    if search
      column = 'content LIKE ? OR content LIKE ? OR song LIKE ? OR song LIKE ? OR artist LIKE ? OR artist LIKE ?'
      value = "%#{search}%"
      if search.is_japanese?
        if search.is_kana?
          change_romaji = search.to_roman
        elsif search.is_hira?
          change_romaji = search.to_roma
        else
          change_hira = search.to_kanhira
          change_romaji = change_hira.to_roma
        end
        value_romaji = "%#{change_romaji}%"
        where([column, value, value_romaji, value, value_romaji, value, value_romaji])
      else
        change_hira = search.to_kana
        change_kana = NKF.nkf('-w --katakana', change_hira)
        value_kana = "%#{change_kana}%"
        where([column, value, value_kana, value, value_kana, value, value_kana])
      end
    else
      all
    end
  end
end
