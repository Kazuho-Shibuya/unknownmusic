FactoryBot.define do
  factory :micropost do
    content '是非聴いてください'
    song 'Love so sweet'
    artist '嵐'
    listening_url 'https://p.scdn.co/mp3-preview/49846ff4faf7a04f86aeab2b9dc3fd29f18da9e0?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    association :user
  end
end
