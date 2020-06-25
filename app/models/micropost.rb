class Micropost < ApplicationRecord
  require 'kakasi'
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :favorite_users, through: :likes, source: :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 100 }
  validates :song, presence: true
  validates :artist, presence: true
  validates :listening_url, presence: true

  # マイクロポストをいいねする
  def favorite(user)
    likes.create(user_id: user.id)
  end

  # マイクロポストのいいねを解除する
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
      english_change = Kakasi.kakasi('-Ja -Ha -Ka', search)
      value_english = "%#{english_change}%"
      where([column, value, value_english, value, value_english, value, value_english])
    else
      all
    end
  end
end
