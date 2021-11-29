# ユーザ
User.create!(
  [
    {
      id: 1,
      name: '渋谷 一帆',
      email: ENV['ADMIN_EMAIL'],
      password: ENV['ADMIN_PASS'],
      password_confirmation: ENV['ADMIN_PASS'],
      admin: true,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/admin_user.jpg')
    },
    {
      id: 2,
      name: 'テストユーザ',
      email: 'test@example.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/test_login_user.jpg')
    }
  ]
)

# ダミーユーザ
User.create!(
  [
    {
      id: 3,
      name: '高田 莉子',
      email: 'riko@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/riko.jpg')
    },
    {
      id: 4,
      name: '宮本 明日香',
      email: 'asuka@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/asuka.jpg')
    },
    {
      id: 5,
      name: 'Amelie Smith',
      email: 'amelie@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/amelie.jpg')
    },
    {
      id: 6,
      name: '藤田 仁',
      email: 'hitoshi@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/hitoshi.jpg')
    },
    {
      id: 7,
      name: '清水 芽衣',
      email: 'mei@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/mei.jpg')
    },
    {
      id: 8,
      name: '長谷川 匠',
      email: 'takumi@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/takumi.jpg')
    },
    {
      id: 9,
      name: '藤井 蓮',
      email: 'renn@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/renn.jpg')
    },
    {
      id: 10,
      name: '山崎 誠',
      email: 'makoto@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/makoto.jpg')
    },
    {
      id: 11,
      name: '前田 愛子',
      email: 'aiko@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/aiko.jpg')
    },
    {
      id: 12,
      name: 'James Johnson',
      email: 'james@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/james.jpg')
    },
    {
      id: 13,
      name: '武田 悠人',
      email: 'yuuto@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/yuuto.jpg')
    },
    {
      id: 14,
      name: '近藤 蒼',
      email: 'ao@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/ao.jpg')
    },
    {
      id: 15,
      name: 'Eric Williams',
      email: 'eric@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/eric.jpg')
    },
    {
      id: 16,
      name: '中野 愛美',
      email: 'aimi@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/aimi.jpg')
    },
    {
      id: 17,
      name: 'Judy Brown',
      email: 'judy@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/judy.jpg')
    },
    {
      id: 18,
      name: '大塚 太郎',
      email: 'tarou@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/tarou.jpg')
    },
    {
      id: 19,
      name: '武田 陸',
      email: 'riku@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/riku.jpg')
    },
    {
      id: 20,
      name: 'Bonnie Jones',
      email: 'bonnie@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/bonnie.jpg')
    },
    {
      id: 21,
      name: '石井 秀人',
      email: 'hideto@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/hideto.jpg')
    },
    {
      id: 22,
      name: '高田 翔',
      email: 'kakeru@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/kakeru.jpg')
    },
    {
      id: 23,
      name: 'Sofia Miller',
      email: 'sofia@example.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/sofia.jpg')
    },
    {
      id: 24,
      name: '原 楓',
      email: 'kaede@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/kaede.jpg')
    },
    {
      id: 25,
      name: '増田 しずく',
      email: 'shizuku@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/shizuku.jpg')
    },
    {
      id: 26,
      name: '中島 明里',
      email: 'akari@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/akari.jpg')
    },
    {
      id: 27,
      name: 'Olivia Davis',
      email: 'olivia@example.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/olivia.jpg')
    },
    {
      id: 28,
      name: '野口 優花',
      email: 'yuuka@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/yuuka.jpg')
    },
    {
      id: 29,
      name: '加藤 多代',
      email: 'tayo@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/tayo.jpg')
    },
    {
      id: 30,
      name: '橋本 絵理香',
      email: 'erika@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/erika.jpg')
    },
    {
      id: 31,
      name: '木村 佳澄',
      email: 'kasumi@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/kasumi.jpg')
    },
    {
      id: 32,
      name: 'George Garcia',
      email: 'george@example.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/george.jpg')
    },
    {
      id: 33,
      name: '斎藤 七海',
      email: 'nanami@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/nanami.jpg')
    },
    {
      id: 34,
      name: '松井 優',
      email: 'yuu@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/yuu.jpg')
    },
    {
      id: 35,
      name: '佐藤 奏歌',
      email: 'souka@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/souka.jpg')
    },
    {
      id: 36,
      name: 'Evans Rodriguez',
      email: 'evans@example.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/evans.jpg')
    },
    {
      id: 37,
      name: '杉山 鈴',
      email: 'suzu@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/suzu.jpg')
    },
    {
      id: 38,
      name: '松田 奈緒',
      email: 'nao@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/nao.jpg')
    },
    {
      id: 39,
      name: '岩崎 瞳',
      email: 'hitomi@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/hitomi.jpg')
    },
    {
      id: 40,
      name: 'Bill Wilson',
      email: 'bill@example.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/bill.jpg')
    },
    {
      id: 41,
      name: '中川 樹',
      email: 'ituki@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/ituki.jpg')
    },
    {
      id: 42,
      name: '近藤 真央',
      email: 'mao@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/mao.jpg')
    },
    {
      id: 43,
      name: '宮本 遥',
      email: 'haruka@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/haruka.jpg')
    },
    {
      id: 44,
      name: '原 美香',
      email: 'mika@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/mika.jpg')
    },
    {
      id: 45,
      name: '宮崎 誉',
      email: 'homare@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/homare.jpg')
    },
    {
      id: 46,
      name: '金子 舞',
      email: 'mai@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/mai.jpg')
    },
    {
      id: 47,
      name: '木下 ふみ',
      email: 'fumi@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/fumi.jpg')
    },
    {
      id: 48,
      name: '高田 隼人',
      email: 'hayato@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/hayato.jpg')
    },
    {
      id: 49,
      name: '錦 雄太',
      email: 'yuuta@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/yuuta.jpg')
    },
    {
      id: 50,
      name: '中林 慎吾',
      email: 'sinngo@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now
      # image: File.open('./app/assets/images/sinngo.jpg')
    }
  ]
)

# 投稿
first_user = User.find_by(id: 1)
second_user = User.find_by(id: 2)
third_user = User.find_by(id: 3)
fourth_user = User.find_by(id: 4)
fifth_user = User.find_by(id: 5)
seventh_user = User.find_by(id: 7)
eleventh_user = User.find_by(id: 11)
twelfth_user = User.find_by(id: 12)
thirteenth_user = User.find_by(id: 13)
fourteenth_user = User.find_by(id: 14)
fifteenth_user = User.find_by(id: 15)
sixteenth_user = User.find_by(id: 16)
seventeenth_user = User.find_by(id: 17)
eighteenth_user = User.find_by(id: 18)
nineteenth_user = User.find_by(id: 19)
twentysecond_user = User.find_by(id: 22)
twentyfourth_user = User.find_by(id: 24)
thirtieth_user = User.find_by(id: 30)
fortyseventh_user = User.find_by(id: 47)

first_user.microposts.create!(
  song: '夜に駆ける',
  artist: 'YOASOBI',
  content: '圧倒的な歌唱力。キャッチーなメロディー。是非聴いてみてください。',
  listening_url: 'https://p.scdn.co/mp3-preview/11baebef4acdc0b95a329ebe195ce3c74f94fa08?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: 'Water Lily',
  artist: 'LAMP IN TERREN',
  content: 'どんどん有名になって欲しいバンド。美しい声とメロディー。',
  listening_url: 'https://p.scdn.co/mp3-preview/e35d58a185a4ad890db2985f4c9111fe537d0d22?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
eighteenth_user.microposts.create!(
  song: 'Shape of You',
  artist: 'エド・シーラン',
  content: '最初聴いた時衝撃を受けた一曲。',
  listening_url: 'https://p.scdn.co/mp3-preview/84462d8e1e4d0f9e5ccd06f0da390f65843774a2?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
first_user.microposts.create!(
  song: 'Dragon Night',
  artist: 'SEKAI NO OWARI',
  content: 'こんな夜が早く来ますように。',
  listening_url: 'https://p.scdn.co/mp3-preview/7f44e126a8c1ee219e50526711e1bf43ba7bdff0?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
fourth_user.microposts.create!(
  song: 'I LOVE...',
  artist: 'Official髭男dism',
  content: 'ドラマって、人を幸せにすると思う。',
  listening_url: 'https://p.scdn.co/mp3-preview/cca01902b27fdbff26afc8e795492f7847366851?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
first_user.microposts.create!(
  song: 'ファンファーレ',
  artist: 'sumika',
  content: '夜を超えて、闇を抜けて。爽快感満載。',
  listening_url: 'https://p.scdn.co/mp3-preview/404fcb4c970fd0db9731687450da9f8571f5cb5d?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
seventeenth_user.microposts.create!(
  song: 'ヘビーローテーション',
  artist: 'AKB48',
  content: 'When I say idol, I mean this song!',
  listening_url: 'https://p.scdn.co/mp3-preview/a04922d9aef443dd3b46a1c81743da242299774d?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
sixteenth_user.microposts.create!(
  song: '清水 翔太 feat.仲宗根 泉(HY)',
  artist: '366日',
  content: '超名曲。２人のハーモニーが素敵だよね〜。',
  listening_url: 'https://p.scdn.co/mp3-preview/51c1769409d61bf6a4b2508dadfce6a4eb2cd026?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: 'ラフ・メイカー',
  artist: 'BUMP OF CHICKEN',
  content: 'BUMPは最高のバンド。またライブに行きたい。',
  listening_url: 'https://p.scdn.co/mp3-preview/0824e85c9b67cd13fc3c0e23fd5201904390201c?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
nineteenth_user.microposts.create!(
  song: '青い珊瑚礁',
  artist: '松田聖子',
  content: '夏が待ち遠しい。。',
  listening_url: 'https://p.scdn.co/mp3-preview/e1b80b719601febbbfd462f3dfeb81c5ec23978b?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
first_user.microposts.create!(
  song: '糸',
  artist: '菅田 将暉',
  content: '蘇った名曲。ひゅーいさんの声もたまらない。',
  listening_url: 'https://p.scdn.co/mp3-preview/ffc448b36acca4f7792407df59c0d8895d83702a?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: 'ふたたび',
  artist: '久石譲',
  content: 'ジブリで一番好き。',
  listening_url: 'https://p.scdn.co/mp3-preview/631792f5fdc55c93691d2f28ae724333f8861008?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
eleventh_user.microposts.create!(
  song: '白日',
  artist: 'King Gnu',
  content: '井口さんの高音って素敵だよね〜。そして曲もかっこいい。',
  listening_url: 'https://p.scdn.co/mp3-preview/2d618522895fc22ece3a7d68239d8edf17a79958?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: 'ミュージック',
  artist: 'サカナクション',
  content: 'この盛り上げ方は唯一無二。',
  listening_url: 'https://p.scdn.co/mp3-preview/d912a8d55f6e29155c2f0b11eb17d6f964feb7e1?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
twelfth_user.microposts.create!(
  song: 'Wasted Nights',
  artist: 'ONE OK ROCK',
  content: 'Magnificent world view. A song that transcends the Japanese band.',
  listening_url: 'https://p.scdn.co/mp3-preview/450dfad84faa44462d34c3965b06c34428dbf66c?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: 'インフルエンサー',
  artist: '乃木坂46',
  content: '可愛いとかっこいいの両立。',
  listening_url: 'https://p.scdn.co/mp3-preview/3b39a4120a2694468afe22d4e24c4b4b7af91172?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
fifth_user.microposts.create!(
  song: 'Surrender',
  artist: 'キャッシュ・キャッシュ',
  content: 'If you don\'t know it, I highly recommend it.',
  listening_url: 'https://p.scdn.co/mp3-preview/b6db4c5d640420e6579010e8ce66802fc2229e86?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: 'ヒカリヘ',
  artist: 'miwa',
  content: 'この曲からmiwaの大ファン！！！',
  listening_url: 'https://p.scdn.co/mp3-preview/bc996e8bd78570e48b9d4c137b525890cf6a2d77?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
fourteenth_user.microposts.create!(
  song: 'Rewrite The Stars',
  artist: 'ザック・エフロン',
  content: '感動した。最高の映画！',
  listening_url: 'https://p.scdn.co/mp3-preview/fa020bdce61bb930040ae090510598b1daec2062?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: 'さよならエレジー',
  artist: '菅田 将暉',
  content: 'アコギが本当にかっこいい。',
  listening_url: 'https://p.scdn.co/mp3-preview/ae899f9017253a963ec657027fb6e983e8339cf5?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
thirteenth_user.microposts.create!(
  song: 'New Memories',
  artist: 'ダブヴィジョン',
  content: 'これぞ、世界。',
  listening_url: 'https://p.scdn.co/mp3-preview/de040a258070398d6ba646d6dfcab50351368c25?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
first_user.microposts.create!(
  song: 'こころ',
  artist: '小田和正',
  content: '辛い時、疲れた時におすすめ。',
  listening_url: 'https://p.scdn.co/mp3-preview/e4f673708110ded2737b7583a44b27931b02791b?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: '裸の心',
  artist: 'あいみょん',
  content: 'あいみょんの歌って全部いいよね。',
  listening_url: 'https://p.scdn.co/mp3-preview/f14e3fd6602c48ac549f7a655c199243c363829c?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: '赤い糸',
  artist: 'コブクロ',
  content: '大好きなラブソング。',
  listening_url: 'https://p.scdn.co/mp3-preview/37f279c9cb470272d8f1a01d98e7c49643e13a7e?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
fifth_user.microposts.create!(
  song: 'またね',
  artist: '緑黄色社会',
  content: 'If you don\'t know Ryokshaka, you should listen to it.',
  listening_url: 'https://p.scdn.co/mp3-preview/f8f2e7b99e231c8f765290572c84f208fa42e4d1?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: '花',
  artist: 'ORANGE RANGE',
  content: '懐かしい。定期的に聴きたくなる。',
  listening_url: 'https://p.scdn.co/mp3-preview/87746558781e037935c1ba5c43b017d41957d315?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
fourth_user.microposts.create!(
  song: '441',
  artist: 'miwa',
  content: 'miwaはこの曲が好き！！',
  listening_url: 'https://p.scdn.co/mp3-preview/1a3c0bbeb4ff9592732f0ab0e880fa52d8de271c?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: 'あとひとつ',
  artist: 'FUNKY MONKEY BABYS',
  content: '前向いて頑張ろう。ファンモンの曲って真っ直ぐだよね。',
  listening_url: 'https://p.scdn.co/mp3-preview/abf7218ee1b7bcce950690e8de87821a6c784677?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
fifth_user.microposts.create!(
  song: '感電',
  artist: '米津玄師',
  content: 'A song that only Yonezu could have written. The best.',
  listening_url: 'https://p.scdn.co/mp3-preview/bd64e53bdc0cc73c09977980420a23ee77662b10?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: '未来予想図II',
  artist: 'DREAMS COME TRUE',
  content: 'これ以上歌が上手い人がいるのだろうか。',
  listening_url: 'https://p.scdn.co/mp3-preview/a7dfd0556d888f4453861e2dfed02ddc0ac1c9a7?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: 'Viva La Vida',
  artist: 'コールドプレイ',
  content: '一回でいいからライブに行ってみたい。',
  listening_url: 'https://p.scdn.co/mp3-preview/ceb88eddfa4bac6be64e90606741ebedf8501893?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
fifth_user.microposts.create!(
  song: 'Don\'t Stop Believin\'',
  artist: 'ジャーニー',
  content: 'I don\'t know if this is such a cool thing to do.',
  listening_url: 'https://p.scdn.co/mp3-preview/21b9abd3cd2eea634e17a917196fdd5ba2e82670?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: 'Emotions',
  artist: 'MAN WITH A MISSION',
  content: 'マジで最高にかっこいい。',
  listening_url: 'https://p.scdn.co/mp3-preview/be6e64952e0c3c911b5b7fc8e5d403e9f8b71220?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
seventh_user.microposts.create!(
  song: 'いつも何度でも',
  artist: '木村弓',
  content: 'この曲で育った。',
  listening_url: 'https://p.scdn.co/mp3-preview/fed76bd3040ae25dd49a0ec634f6dec9fe31396f?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
fifteenth_user.microposts.create!(
  song: 'Closer',
  artist: 'ザ・チェインスモーカーズ',
  content: 'I think it is the best song ever.',
  listening_url: 'https://p.scdn.co/mp3-preview/8d3df1c64907cb183bff5a127b1525b530992afb?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: 'シグナル',
  artist: 'WANIMA',
  content: 'WANIMA嫌いな人なんていない気がする。',
  listening_url: 'https://p.scdn.co/mp3-preview/919ee64e0d5c4a0176bb247002de8b5573a65c02?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
third_user.microposts.create!(
  song: 'Pretender',
  artist: 'Official髭男dism',
  content: 'なんていい歌詞なんだろう。お気に入りの曲。',
  listening_url: 'https://p.scdn.co/mp3-preview/be38b0e8369611ca2f850431fc85c54fa96779cb?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: 'swim',
  artist: '04 Limited Sazabys',
  content: 'スピード感。フォーリミといったらこの曲。',
  listening_url: 'https://p.scdn.co/mp3-preview/31f46c7569d982935fde89ca7d2b546ccf187ea6?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: 'BLACK MEMORY',
  artist: 'THE ORAL CIGARETTES',
  content: 'ダークで濃厚でキャッチー。オーラル大好き。',
  listening_url: 'https://p.scdn.co/mp3-preview/8bee3c3625e58361a2cb67a15c3f1b3ee76a4ef8?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: 'もっと光を。',
  artist: 'BLUE ENCOUNT',
  content: 'もっと。もっと。もっと。光を。',
  listening_url: 'https://p.scdn.co/mp3-preview/b750a985187556b9d82817bb06856a16eb3166fa?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
thirtieth_user.microposts.create!(
  song: '紅蓮華',
  artist: 'LiSA',
  content: '鬼滅の刃、みんな見た？？',
  listening_url: 'https://p.scdn.co/mp3-preview/3fbebc524b4fd2295324a80baaff01bbc21038e6?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
third_user.microposts.create!(
  song: 'HANABI',
  artist: 'Mr.Children',
  content: 'この曲聴くと、コードブルーまた見たくなる！！',
  listening_url: 'https://p.scdn.co/mp3-preview/56a5664281e5a380f315b337f2a4421b780d62bd?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
fourth_user.microposts.create!(
  song: '炎',
  artist: 'LiSA',
  content: '大旋風だよね。最高。',
  listening_url: 'https://p.scdn.co/mp3-preview/79cbe8db228a49777a25115fd44f4074796a67ed?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
third_user.microposts.create!(
  song: '気まぐれロマンティック',
  artist: 'いきものがかり',
  content: 'いきものががり名曲多すぎて悩む。。',
  listening_url: 'https://p.scdn.co/mp3-preview/90be9a6818d2209ba225c28c0297e15d20484c73?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: '栄光の架橋',
  artist: 'ゆず',
  content: 'オリンピックが無事開催されることを心から祈っています。',
  listening_url: 'https://p.scdn.co/mp3-preview/0768047160ed10c58efff6a36ee3b8c27a82f71f?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
third_user.microposts.create!(
  song: '決意の朝に',
  artist: 'Aqua Timez',
  content: '辛いとき聴きたくなる曲。',
  listening_url: 'https://p.scdn.co/mp3-preview/253019e1f54206fc07218814c2d26c637368071d?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
fourth_user.microposts.create!(
  song: '手紙 ~拝啓 十五の君へ~',
  artist: 'アンジェラ・アキ',
  content: '何回この曲に救われたか。。',
  listening_url: 'https://p.scdn.co/mp3-preview/362e524c6bdf65e268119ed1c79d3d62d6c2b4ec?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: 'TSUNAMI',
  artist: 'サザンオールスターズ',
  content: '夏といったらやっぱりこの曲でしょ。',
  listening_url: 'https://p.scdn.co/mp3-preview/aac1c5d2c7a357ea9cab9299994f75037fb3096a?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
third_user.microposts.create!(
  song: 'I LOVE YOU',
  artist: '尾崎豊',
  content: '永遠の名曲。',
  listening_url: 'https://p.scdn.co/mp3-preview/3d876a724c0978a72338753b3be75821a23bd23b?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: 'Love so sweet',
  artist: '嵐',
  content: 'やっぱり嵐が大好き。',
  listening_url: 'https://p.scdn.co/mp3-preview/49846ff4faf7a04f86aeab2b9dc3fd29f18da9e0?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
fifth_user.microposts.create!(
  song: 'TT',
  artist: 'TWICE',
  content: 'Great dancing.',
  listening_url: 'https://p.scdn.co/mp3-preview/24b9c9d9b6e71cab5d467533e13db282e2375254?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: 'Lovers Again',
  artist: 'EXILE',
  content: 'やっぱりEXILEでしょ。',
  listening_url: 'https://p.scdn.co/mp3-preview/a6e0df22386b8f9e2fbf8e85afd92f6a64f70ee0?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
second_user.microposts.create!(
  song: 'Family Song',
  artist: '星野 源',
  content: '恋もいいけどこの曲もめっちゃ好き。',
  listening_url: 'https://p.scdn.co/mp3-preview/00276fb8495ac59e91ea0085a494f8888a6b0ff0?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
eleventh_user.microposts.create!(
  song: 'Pale Blue',
  artist: '米津玄師',
  content: '米津さんの曲はいつも最高！',
  listening_url: 'https://p.scdn.co/mp3-preview/c600314607f37998c56a206bbec7404d920235ee?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
twentysecond_user.microposts.create!(
  song: 'もう少しだけ',
  artist: 'YOASOBI',
  content: '不動のYOASOBI。',
  listening_url: 'https://p.scdn.co/mp3-preview/16c1f73dd860bd79315533aae987b142cfd937bf?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
thirteenth_user.microposts.create!(
  song: '不思議',
  artist: '星野 源',
  content: 'ドラマで流れるタイミングがベスト！',
  listening_url: 'https://p.scdn.co/mp3-preview/92a761a8a349c17a468b692ade2e730536e435bc?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
twentyfourth_user.microposts.create!(
  song: 'ドライフラワー',
  artist: '優里',
  content: '綺麗な歌声。',
  listening_url: 'https://p.scdn.co/mp3-preview/41b1b37df1256eacdcd963913e8e2b431a235217?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
fortyseventh_user.microposts.create!(
  song: 'なないろ',
  artist: 'BUMP OF CHICKEN',
  content: '朝にぴったり♪',
  listening_url: 'https://p.scdn.co/mp3-preview/2584f40ade54f8b553f6f2b500fafb482a3f90ad?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)
thirtieth_user.microposts.create!(
  song: 'Renegades',
  artist: 'ONE OK ROCK',
  content: 'るろうに剣心いいよね〜',
  listening_url: 'https://p.scdn.co/mp3-preview/332f9aba55e8c727d7271a93db0524f40041c162?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
)

# フォロー
users = User.all
following = users[2..21]
followers = users[2..21]
following.each { |followed| first_user.follow(followed) }
followers.each { |follower| follower.follow(first_user) }

following = users[3..22]
followers = users[3..22]
following.each { |followed| second_user.follow(followed) }
followers.each { |follower| follower.follow(second_user) }

following = users[4..23]
followers = users[4..23]
following.each { |followed| third_user.follow(followed) }
followers.each { |follower| follower.follow(third_user) }

following = users[5..24]
followers = users[5..24]
following.each { |followed| fourth_user.follow(followed) }
followers.each { |follower| follower.follow(fourth_user) }

following = users[6..25]
followers = users[6..25]
following.each { |followed| fifth_user.follow(followed) }
followers.each { |follower| follower.follow(fifth_user) }

# いいね
users = User.order(:created_at).last(21)
user_id = 15
micropost_id = 54
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).take(17)
user_id = 8
micropost_id = 55
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).last(20)
user_id = 22
micropost_id = 56
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).take(35)
user_id = 17
micropost_id = 57
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).last(16)
user_id = 27
micropost_id = 58
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).take(24)
user_id = 9
micropost_id = 59
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).last(44)
user_id = 1
micropost_id = 1
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).take(42)
user_id = 3
micropost_id = 37
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).last(12)
user_id = 15
micropost_id = 35
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).take(11)
user_id = 30
micropost_id = 41
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).last(50)
user_id = 4
micropost_id = 43
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).take(9)
user_id = 12
micropost_id = 15
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).last(7)
user_id = 18
micropost_id = 3
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).take(27)
user_id = 11
micropost_id = 3
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).last(5)
user_id = 13
micropost_id = 21
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).last(4)
user_id = 5
micropost_id = 29
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).take(3)
user_id = 2
micropost_id = 45
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).last(3)
user_id = 2
micropost_id = 2
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).last(3)
user_id = 1
micropost_id = 4
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).take(2)
user_id = 4
micropost_id = 5
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).last(2)
user_id = 17
micropost_id = 7
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).take(2)
user_id = 2
micropost_id = 9
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).take(1)
user_id = 1
micropost_id = 11
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).last(1)
user_id = 2
micropost_id = 12
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).take(1)
user_id = 7
micropost_id = 34
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

users = User.order(:created_at).take(1)
user_id = 2
micropost_id = 36
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }
