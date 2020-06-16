class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 10 }
  validates :song, presence: true
  validates :artist, presence: true
  validates :listening_url, presence: true
end
