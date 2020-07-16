require 'rails_helper'

RSpec.describe User, type: :model do
  it '名前、メール、パスワードがあれば登録できる' do
    user = User.new(
      name: '佐藤太郎',
      email: 'tester@example.com',
      password: 'password'
    )
    expect(user).to be_valid
  end

  it '名前が空欄だと登録できない' do
    user = User.new(name: nil)
    user.valid?
    expect(user.errors[:name]).to include('を入力してください')
  end

  it 'メールアドレスが空欄だと登録できない' do
    user = User.new(email: nil)
    user.valid?
    expect(user.errors[:email]).to include('を入力してください')
  end

  it 'パスワードが空欄だと登録できない' do
    user = User.new(password: nil)
    user.valid?
    expect(user.errors[:password]).to include('を入力してください')
  end

  it '登録済みのメールアドレスは登録できない' do
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

  it 'パスワードが6文字以上の場合登録できる' do
    user = User.new(
      name: '佐藤太郎',
      email: 'tester@example.com',
      password: 'foobar'
    )
    user.valid?
    expect(user).to be_valid
  end

  it 'パスワードが5文字以下の場合登録できない' do
    user = User.new(password: 'fooba')
    user.valid?
    expect(user.errors[:password]).to include('は6文字以上で入力してください')
  end

  it '名前が50文字以下の場合登録できる' do
    user = User.new(
      name: 'a' * 50,
      email: 'tester@example.com',
      password: 'foobar'
    )
    user.valid?
    expect(user).to be_valid
  end

  it '名前が51文字以上の場合登録できない' do
    user = User.new(name: 'a' * 51)
    user.valid?
    expect(user.errors[:name]).to include('は50文字以内で入力してください')
  end

  it 'メールアドレスが255文字以下の場合登録できる' do
    user = User.new(
      name: '佐藤太郎',
      email: 'a' * 243 + '@example.com',
      password: 'foobar'
    )
    user.valid?
    expect(user).to be_valid
  end

  it 'メールアドレスが256文字以上の場合登録できない' do
    user = User.new(email: 'a' * 244 + '@example.com')
    user.valid?
    expect(user.errors[:email]).to include('は255文字以内で入力してください')
  end

  it 'パスワードと確認が一致していないと登録できない' do
    user = User.new(
      password: 'foobar',
      password_confirmation: 'password'
    )
    user.valid?
    expect(user.errors[:password_confirmation]).to include('とパスワードの入力が一致しません')
  end

  it 'パスワードが暗号化されているか' do
    user = User.create(
      name: '佐藤太郎',
      email: 'test@example.com',
      password: 'foobar'
    )
    expect(user.password_digest).to_not eq 'foobar'
  end
end
