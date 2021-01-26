FactoryBot.define do
  factory :micropost do
    content '是非聴いてください'
    song 'Love so sweet'
    artist '嵐'
    listening_url 'https://p.scdn.co/mp3-preview/49846ff4faf7a04f86aeab2b9dc3fd29f18da9e0?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    association :user
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
