require 'rails_helper'

RSpec.describe User, type: :model do
  # 名前、メール、パスワードがあれば有効な状態であること
  it 'is valid with a name, email, and password' do
    user = User.new(
      name: '佐藤太郎',
      email: 'tester@example.com',
      password: 'foobar'
    )
    expect(user).to be_valid
  end

  # 名前がなければ無効な状態であること
  it 'is invalid without a name' do
    user = User.new(name: nil)
    user.valid?
    expect(user.errors[:name]).to include('を入力してください')
  end
  # メールアドレスがなければ無効な状態であること
  it 'is invalid without an email address' do
    user = User.new(email: nil)
    user.valid?
    expect(user.errors[:email]).to include('を入力してください')
  end
  # 重複したメールアドレスなら無効な状態であること
  it 'is invalid with a duplicate email address' do
    user = User.create(
      name: '佐藤太郎',
      email: 'tester@example.com',
      password: 'foobar'
    )
    user = User.new(
      name: '佐藤太郎',
      email: 'tester@example.com',
      password: 'foobar'
    )
    user.valid?
    expect(user.errors[:email]).to include('はすでに存在します')
  end
end
