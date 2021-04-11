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

  # 言語を変更する
  def self.change_language(content)
    if content.is_japanese?
      if content.is_kana?
        content.to_roman
      elsif content.is_hira?
        content.to_roma
      else
        content.to_kanhira.to_roma
      end
    else
      NKF.nkf('-w --katakana', content.to_kana)
    end
  end

  # 投稿内容を検索する
  def self.search(search_content)
    return all unless search_content

    column = 'content LIKE ? OR content LIKE ? OR song LIKE ? OR song LIKE ? OR artist LIKE ? OR artist LIKE ?'
    content = "%#{search_content}%"
    change_language_content = "%#{change_language(search_content)}%"
    where([column, content, change_language_content, content, change_language_content, content,
           change_language_content])
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
