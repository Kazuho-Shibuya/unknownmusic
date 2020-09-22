# ユーザー
User.create!(name: '渋谷一帆',
             email: 'shibuyak0213@gmail.com',
             password: 'foobar',
             password_confirmation: 'foobar',
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

# テストログインユーザー
User.create!(name: 'テストユーザー',
             email: 'test@example.com',
             password: 'password',
             password_confirmation: 'password',
             admin: false,
             activated: true,
             activated_at: Time.zone.now)

# テストユーザー
98.times do |_n|
  name = Faker::Name.name
  email = Faker::Internet.email
  password = 'password'
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

# マイクロポスト
users = User.order(:created_at).take(6)
50.times do
  song = 'Love so Sweet'
  artist = '嵐'
  content = 'これぞラブソング！！！'
  listening_url = 'https://p.scdn.co/mp3-preview/49846ff4faf7a04f86aeab2b9dc3fd29f18da9e0?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
  users.each { |user| user.microposts.create!(song: song, artist: artist, content: content, listening_url: listening_url) }
end

# リレーションシップ
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

# 10いいね
users = User.order(:created_at).take(10)
user_id = 1
micropost_id = 1
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

# 5いいね
3.times do |n|
  users = User.order(:created_at).take(5)
  user_id = n + 11
  micropost_id = n + 11
  users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }
end

# 3いいね
10.times do |n|
  users = User.order(:created_at).take(1)
  user_id = n + 21
  micropost_id = n + 21
  users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }
end
