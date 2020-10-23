# ユーザ
User.create!(
  [
    {
      name: '渋谷 一帆',
      email: 'shibuyak0213@gmail.com',
      password: 'foobar',
      password_confirmation: 'foobar',
      admin: true,
      activated: true,
      activated_at: Time.zone.now,
      image: File.open('./app/assets/images/admin_user.jpg')
    },
    {
      name: 'テストユーザ',
      email: 'test@example.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now,
      image: File.open('./app/assets/images/test_login_user.jpg')
    }
  ]
)

# ダミーユーザ
38.times do |_n|
  name = Faker::Name.name
  email = Faker::Internet.email
  password = 'password'
  image = File.open("./app/assets/images/dummy#{n + 1}.jpg")
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now,
               image: image)
end

User.create!(
  [
    {
      name: 'Amelie Smith',
      email: 'amelie@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now,
      image: File.open('./app/assets/images/amelie.jpg')
    },
    {
      name: 'James Johnson',
      email: 'james@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now,
      image: File.open('./app/assets/images/james.jpg')
    },
    {
      name: 'Eric Williams',
      email: 'eric@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now,
      image: File.open('./app/assets/images/eric.jpg')
    },
    {
      name: 'Judy Brown',
      email: 'judy@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now,
      image: File.open('./app/assets/images/judy.jpg')
    },
    {
      name: 'Bonnie Jones',
      email: 'bonnie@gmail.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now,
      image: File.open('./app/assets/images/bonnie.jpg')
    },
    {
      name: 'Sofia Miller',
      email: 'landan@example.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now,
      image: File.open('./app/assets/images/sofia.jpg')
    },
    {
      name: 'Olivia Davis',
      email: 'greg@example.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now,
      image: File.open('./app/assets/images/olivia.jpg')
    },
    {
      name: 'George Garcia',
      email: 'george@example.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now,
      image: File.open('./app/assets/images/george.jpg')
    },
    {
      name: 'Evans Rodriguez',
      email: 'evans@example.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now,
      image: File.open('./app/assets/images/evans.jpg')
    },
    {
      name: 'Bill Wilson',
      email: 'bill@example.com',
      password: 'password',
      password_confirmation: 'password',
      admin: false,
      activated: true,
      activated_at: Time.zone.now,
      image: File.open('./app/assets/images/bill.jpg')
    }
  ]
)

# 投稿
first_user = User.first
first_user.microposts.create!(
  [
    {
      song: '夜に駆ける',
      artist: 'YOASOBI',
      content: '圧倒的な歌唱力。キャッチーなメロディー。是非聴いてみてください。',
      listening_url: 'https://p.scdn.co/mp3-preview/11baebef4acdc0b95a329ebe195ce3c74f94fa08?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'Dragon Night',
      artist: 'SEKAI NO OWARI',
      content: 'こんな夜が早く来ますように。',
      listening_url: 'https://p.scdn.co/mp3-preview/7f44e126a8c1ee219e50526711e1bf43ba7bdff0?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'ファンファーレ',
      artist: 'sumika',
      content: '夜を超えて、闇を抜けて。爽快感満載。',
      listening_url: 'https://p.scdn.co/mp3-preview/404fcb4c970fd0db9731687450da9f8571f5cb5d?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: '糸',
      artist: '菅田 将暉',
      content: '蘇った名曲。ひゅーいさんの声もたまらない。',
      listening_url: 'https://p.scdn.co/mp3-preview/ffc448b36acca4f7792407df59c0d8895d83702a?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'こころ',
      artist: '小田和正',
      content: '辛い時、疲れた時におすすめ。',
      listening_url: 'https://p.scdn.co/mp3-preview/e4f673708110ded2737b7583a44b27931b02791b?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    }
  ]
)

second_user = User.second
second_user.microposts.create!(
  [
    {
      song: 'ラフ・メイカー',
      artist: 'BUMP OF CHICKEN',
      content: 'BUMPは最高のバンド。またライブに行きたい。',
      listening_url: 'https://p.scdn.co/mp3-preview/0824e85c9b67cd13fc3c0e23fd5201904390201c?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'ミュージック',
      artist: 'サカナクション',
      content: 'この盛り上げ方は唯一無二。',
      listening_url: 'https://p.scdn.co/mp3-preview/d912a8d55f6e29155c2f0b11eb17d6f964feb7e1?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'ふたたび',
      artist: '久石譲',
      content: 'ジブリで一番好き。',
      listening_url: 'https://p.scdn.co/mp3-preview/631792f5fdc55c93691d2f28ae724333f8861008?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'Closer',
      artist: 'ザ・チェインスモーカーズ',
      content: '史上最高の曲だと思う。',
      listening_url: 'https://p.scdn.co/mp3-preview/8d3df1c64907cb183bff5a127b1525b530992afb?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'ヒカリヘ',
      artist: 'miwa',
      content: 'この曲からmiwaの大ファン！！！',
      listening_url: 'https://p.scdn.co/mp3-preview/bc996e8bd78570e48b9d4c137b525890cf6a2d77?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'Love so sweet',
      artist: '嵐',
      content: 'やっぱり嵐が大好き。',
      listening_url: 'https://p.scdn.co/mp3-preview/49846ff4faf7a04f86aeab2b9dc3fd29f18da9e0?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'Water Lily',
      artist: 'LAMP IN TERREN',
      content: 'どんどん有名になって欲しいバンド。美しい声とメロディー。',
      listening_url: 'https://p.scdn.co/mp3-preview/e35d58a185a4ad890db2985f4c9111fe537d0d22?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'さよならエレジー',
      artist: '菅田 将暉',
      content: 'アコギが本当にかっこいい。',
      listening_url: 'https://p.scdn.co/mp3-preview/ae899f9017253a963ec657027fb6e983e8339cf5?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: '裸の心',
      artist: 'あいみょん',
      content: 'あいみょんの歌って全部いいよね。',
      listening_url: 'https://p.scdn.co/mp3-preview/f14e3fd6602c48ac549f7a655c199243c363829c?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: '赤い糸',
      artist: 'コブクロ',
      content: '大好きなラブソング。',
      listening_url: 'https://p.scdn.co/mp3-preview/37f279c9cb470272d8f1a01d98e7c49643e13a7e?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: '花',
      artist: 'ORANGE RANGE',
      content: '懐かしい。定期的に聴きたくなる。',
      listening_url: 'https://p.scdn.co/mp3-preview/87746558781e037935c1ba5c43b017d41957d315?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'あとひとつ',
      artist: 'FUNKY MONKEY BABYS',
      content: '前向いて頑張ろう。ファンモンの曲って真っ直ぐだよね。',
      listening_url: 'https://p.scdn.co/mp3-preview/abf7218ee1b7bcce950690e8de87821a6c784677?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: '未来予想図II',
      artist: 'DREAMS COME TRUE',
      content: 'これ以上歌が上手い人がいるのだろうか。',
      listening_url: 'https://p.scdn.co/mp3-preview/a7dfd0556d888f4453861e2dfed02ddc0ac1c9a7?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'Lovers Again',
      artist: 'EXILE',
      content: 'やっぱりEXILEでしょ。',
      listening_url: 'https://p.scdn.co/mp3-preview/a6e0df22386b8f9e2fbf8e85afd92f6a64f70ee0?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'Viva La Vida',
      artist: 'コールドプレイ',
      content: '一回でいいからライブに行ってみたい。',
      listening_url: 'https://p.scdn.co/mp3-preview/ceb88eddfa4bac6be64e90606741ebedf8501893?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'Emotions',
      artist: 'MAN WITH A MISSION',
      content: 'マジて最高にかっこいい。',
      listening_url: 'https://p.scdn.co/mp3-preview/be6e64952e0c3c911b5b7fc8e5d403e9f8b71220?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'シグナル',
      artist: 'WANIMA',
      content: 'WANIMA嫌いな人なんていない気がする。',
      listening_url: 'https://p.scdn.co/mp3-preview/919ee64e0d5c4a0176bb247002de8b5573a65c02?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'swim',
      artist: '04 Limited Sazabys',
      content: 'スピード感。フォーリミといったらこの曲。',
      listening_url: 'https://p.scdn.co/mp3-preview/31f46c7569d982935fde89ca7d2b546ccf187ea6?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'BLACK MEMORY',
      artist: 'THE ORAL CIGARETTES',
      content: 'ダークで濃厚でキャッチー。オーラル大好き。',
      listening_url: 'https://p.scdn.co/mp3-preview/8bee3c3625e58361a2cb67a15c3f1b3ee76a4ef8?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'もっと光を',
      artist: 'BLUE ENCOUNT',
      content: 'もっと。もっと。もっと。光を。',
      listening_url: 'https://p.scdn.co/mp3-preview/b750a985187556b9d82817bb06856a16eb3166fa?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'TSUNAMI',
      artist: 'サザンオールスターズ',
      content: '夏といったらやっぱりこの曲でしょ。',
      listening_url: 'https://p.scdn.co/mp3-preview/aac1c5d2c7a357ea9cab9299994f75037fb3096a?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'Family Song',
      artist: '星野 源',
      content: '恋もいいけどこの曲もめっちゃ好き。',
      listening_url: 'https://p.scdn.co/mp3-preview/00276fb8495ac59e91ea0085a494f8888a6b0ff0?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: '栄光の架橋',
      artist: 'ゆず',
      content: 'オリンピックが無事開催されることを心から祈っています。',
      listening_url: 'https://p.scdn.co/mp3-preview/0768047160ed10c58efff6a36ee3b8c27a82f71f?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    }
  ]
)

third_user = User.third
third_user.microposts.create!(
  [
    {
      song: 'Pretender',
      artist: 'Official髭男dism',
      content: 'なんていい歌詞なんだろう。お気に入りの曲。',
      listening_url: 'https://p.scdn.co/mp3-preview/be38b0e8369611ca2f850431fc85c54fa96779cb?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'HANABI',
      artist: 'Mr.Children',
      content: 'またコードブルーみたいね。',
      listening_url: 'https://p.scdn.co/mp3-preview/56a5664281e5a380f315b337f2a4421b780d62bd?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: '気まぐれロマンティック',
      artist: 'いきものがかり',
      content: 'いきものががり名曲多すぎて悩む。。',
      listening_url: 'https://p.scdn.co/mp3-preview/90be9a6818d2209ba225c28c0297e15d20484c73?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: '決意の朝に',
      artist: 'Aqua Timez',
      content: '辛い時に、辛いって言えるようになりたい。',
      listening_url: 'https://p.scdn.co/mp3-preview/253019e1f54206fc07218814c2d26c637368071d?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'Shape of You',
      artist: 'エド・シーラン',
      content: '最初聴いた時衝撃を受けた一曲。',
      listening_url: 'https://p.scdn.co/mp3-preview/84462d8e1e4d0f9e5ccd06f0da390f65843774a2?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    }
  ]
)

fourth_user = User.fourth
fourth_user.microposts.create!(
  [
    {
      song: '紅蓮華',
      artist: 'LiSA',
      content: '鬼滅の刃、是非みて欲しい。かっこいい曲。',
      listening_url: 'https://p.scdn.co/mp3-preview/3fbebc524b4fd2295324a80baaff01bbc21038e6?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: '',
      artist: '',
      content: '大旋風だよね。最高。',
      listening_url: 'https://p.scdn.co/mp3-preview/79cbe8db228a49777a25115fd44f4074796a67ed?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: '441',
      artist: 'miwa',
      content: 'miwaはこの曲が好き！！',
      listening_url: 'https://p.scdn.co/mp3-preview/1a3c0bbeb4ff9592732f0ab0e880fa52d8de271c?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: '手紙 ~拝啓 十五の君へ~',
      artist: 'アンジェラ・アキ',
      content: '何回この曲に救われたか。。',
      listening_url: 'https://p.scdn.co/mp3-preview/362e524c6bdf65e268119ed1c79d3d62d6c2b4ec?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'I LOVE...',
      artist: 'Official髭男dism',
      content: 'ドラマって、人を幸せにすると思う。',
      listening_url: 'https://p.scdn.co/mp3-preview/cca01902b27fdbff26afc8e795492f7847366851?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    }
  ]
)

fifth_user = User.fifth
fifth_user.microposts.create!(
  [
    {
      song: '感電',
      artist: '米津玄師',
      content: '米津さんにしか書けない曲。最高。',
      listening_url: 'https://p.scdn.co/mp3-preview/bd64e53bdc0cc73c09977980420a23ee77662b10?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'TT',
      artist: 'TWICE',
      content: 'ダンス最高。。',
      listening_url: 'https://p.scdn.co/mp3-preview/24b9c9d9b6e71cab5d467533e13db282e2375254?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'Surrender',
      artist: 'キャッシュ・キャッシュ',
      content: '知らない人は是非にお勧めしたい。。',
      listening_url: 'https://p.scdn.co/mp3-preview/b6db4c5d640420e6579010e8ce66802fc2229e86?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'Don\'t Stop Believin\'',
      artist: 'ジャーニー',
      content: 'こんなカッコ良くていいんだろうか。',
      listening_url: 'https://p.scdn.co/mp3-preview/21b9abd3cd2eea634e17a917196fdd5ba2e82670?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    },
    {
      song: 'またね',
      artist: '緑黄色社会',
      content: 'リョクシャカ知らない人は、聴いて欲しい。。',
      listening_url: 'https://p.scdn.co/mp3-preview/f8f2e7b99e231c8f765290572c84f208fa42e4d1?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
    }
  ]
)

eleventh_user = User.eleventh
                    .eleventh_user.microposts.create!(
                      song: '白日',
                      artist: 'King Gnu',
                      content: '美しい。そしてかっこいい。',
                      listening_url: 'https://p.scdn.co/mp3-preview/2d618522895fc22ece3a7d68239d8edf17a79958?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
                    )
twelfth_user = User.twelfth
                   .twelfth_user.microposts.create!(
                     song: 'Wasted Nights',
                     artist: 'ONE OK ROCK',
                     content: '壮大な世界観。日本のバンドを超えた曲。',
                     listening_url: 'https://p.scdn.co/mp3-preview/450dfad84faa44462d34c3965b06c34428dbf66c?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
                   )
thirteenth_user = User.thirteenth
                      .thirteenth_user.microposts.create!(
                        song: 'New Memories',
                        artist: 'ダブヴィジョン',
                        content: 'これぞ、世界。',
                        listening_url: 'https://p.scdn.co/mp3-preview/de040a258070398d6ba646d6dfcab50351368c25?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
                      )
fourteenth_user = User.fourteenth
                      .fourteenth_user.microposts.create!(
                        song: 'Rewrite The Stars',
                        artist: 'ザック・エフ��ン',
                        content: '感動した。最高の映画！',
                        listening_url: ''
                      )
fifteenth_user = User.fifteenth
                     .fifteenth_user.microposts.create!(
                       song: 'インフルエンサー',
                       artist: '乃木坂46',
                       content: '可愛いとかっこいいの両立。',
                       listening_url: 'https://p.scdn.co/mp3-preview/3b39a4120a2694468afe22d4e24c4b4b7af91172?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
                     )
sixteenth_user = User.sixteenth
                     .sixteenth_user.microposts.create!(
                       song: 'ヘビーロ��テーション',
                       artist: 'AKB48',
                       content: 'アイドルといったらこの曲！！',
                       listening_url: 'https://p.scdn.co/mp3-preview/a04922d9aef443dd3b46a1c81743da242299774d?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
                     )
seventeenth_user = User.seventeenth
                       .seventeenth_user.microposts.create!(
                         song: 'Live While We\'re Young',
                         artist: 'ワ���・ダイ���クシ���ン',
                         content: '洋楽を聴くきっかけになった歌。',
                         listening_url: 'https://p.scdn.co/mp3-preview/2d7e502cfbccd748e5c4b0d032e775ecca4ed721?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
                       )
eighteenth_user = User.eighteenth
                      .eighteenth_user.microposts.create!(
                        song: 'I LOVE YOU',
                        artist: '尾崎豊',
                        content: '永遠の名曲。',
                        listening_url: 'https://p.scdn.co/mp3-preview/3d876a724c0978a72338753b3be75821a23bd23b?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
                      )
nineteenth_user = User.nineteenth
                      .nineteenth_user.microposts.create!(
                        song: '青い珊瑚礁',
                        artist: '松田聖子',
                        content: '夏が待ち遠おしい。。',
                        listening_url: 'https://p.scdn.co/mp3-preview/e1b80b719601febbbfd462f3dfeb81c5ec23978b?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
                      )
twentieth_user = User.twentieth
                     .twentieth_user.microposts.create!(
                       song: 'いつも何度でも',
                       artist: '木村弓',
                       content: 'この曲で育った。',
                       listening_url: 'https://p.scdn.co/mp3-preview/fed76bd3040ae25dd49a0ec634f6dec9fe31396f?cid=94ea968e9d334bd3be33c1c3fbb25cc0'
                     )

# フォロー
users = User.all
first_user = users.first
second_user = users.second
third_user = users.third
fourth_user = users.fourth
fifth_user = users.fifth
following = users[2..50]
followers = users[3..40]
following.each { |followed| first_user.follow(followed) }
following.each { |followed| second_user.follow(followed) }
following.each { |followed| third_user.follow(followed) }
following.each { |followed| fourth_user.follow(followed) }
following.each { |followed| fifth_user.follow(followed) }
followers.each { |follower| follower.follow(first_user) }
followers.each { |follower| follower.follow(second_user) }
followers.each { |follower| follower.follow(third_user) }
followers.each { |follower| follower.follow(fourth_user) }
followers.each { |follower| follower.follow(fifth_user) }

# 18いいね
users = User.order(:created_at).take(18)
user_id = 1
micropost_id = 1
users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }

# 9い����ね
3.times do |n|
  users = User.order(:created_at).take(9)
  user_id = n + 3
  micropost_id = 1
  users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }
end

# 4いいね
10.times do |n|
  users = User.order(:created_at).take(4)
  user_id = n + 11
  micropost_id = 1
  users.each { |user| user.likes.create!(user_id: user_id, micropost_id: micropost_id) }
end
