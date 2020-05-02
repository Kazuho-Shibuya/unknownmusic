module UsersHelper
  # 引数で与えられたユーザーのGravatar画像を返す
  def gravatar_for(user, options = { size: 80 })
    # メールアドレスをMD5という仕組みでハッシュ化
    # メールアドレスは大文字と小文字を区別しないが、MD5ハッシュでは区別されるため、hexdigest(MD5のハッシュ化をしているメソッド)の引数を小文字に変換している
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: 'gravatar')
  end
end
