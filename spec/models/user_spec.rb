require 'rails_helper'

RSpec.describe User, type: :model do
  # 名前、メール、パスワードがあれば有効な状態であること
  it 'is valid with a name, email, and password'
  # 名前がなければ無効な状態であること
  it 'is invalid without a name'
  # メールアドレスがなければ無効な状態であること
  it 'is invalid without an email address'
  # 重複したメールアドレスなら無効な状態であること
  it 'is invalid with a duplicate email address'
end
