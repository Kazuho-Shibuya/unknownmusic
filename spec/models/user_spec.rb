require 'rails_helper'

RSpec.describe User, type: :model do
  context '名前、メール、パスワードがある場合' do
    it '登録できる' do
      expect(FactoryBot.build(:user)).to be_valid
    end
  end

  context '名前が空欄の場合' do
    it '登録できない' do
      user = FactoryBot.build(:user, name: nil)
      user.valid?
      expect(user.errors[:name]).to include('を入力してください')
    end
  end

  context 'メールアドレスが空欄の場合' do
    it '登録できない' do
      user = FactoryBot.build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include('を入力してください')
    end
  end

  context 'パスワードが空欄の場合' do
    it '登録できない' do
      user = FactoryBot.build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include('を入力してください')
    end
  end

  context '登録済みのメールアドレスの場合' do
    it '登録できない' do
      FactoryBot.create(:user, email: 'tester@example.com')
      user = FactoryBot.build(:user, email: 'tester@example.com')
      user.valid?
      expect(user.errors[:email]).to include('はすでに存在します')
    end
  end

  context 'パスワードが6文字以上の場合' do
    it '登録できる' do
      user = FactoryBot.build(:user, password: 'foobar')
      user.valid?
      expect(user).to be_valid
    end
  end

  context 'パスワードが5文字以下の場合' do
    it '登録できない' do
      user = FactoryBot.build(:user, password: 'fooba')
      user.valid?
      expect(user.errors[:password]).to include('は6文字以上で入力してください')
    end
  end

  context '名前が50文字以下の場合' do
    it '登録できる' do
      user = FactoryBot.build(:user, name: 'a' * 50)
      user.valid?
      expect(user).to be_valid
    end
  end

  context '名前が51文字以上の場合' do
    it '登録できない' do
      user = FactoryBot.build(:user, name: 'a' * 51)
      user.valid?
      expect(user.errors[:name]).to include('は50文字以内で入力してください')
    end
  end
  context 'メールアドレスが255文字以下の場合' do
    it '登録できる' do
      user = FactoryBot.build(:user, email: "#{'a' * 243}@example.com")
      user.valid?
      expect(user).to be_valid
    end
  end

  context 'メールアドレスが256文字以上の場合' do
    it '登録できない' do
      user = FactoryBot.build(:user, email: "#{'a' * 244}@example.com")
      user.valid?
      expect(user.errors[:email]).to include('は255文字以内で入力してください')
    end
  end

  context 'パスワードと確認が一致していない場合' do
    it '登録できない' do
      user = FactoryBot.build(:user, password_confirmation: 'foobar')
      user.valid?
      expect(user.errors[:password_confirmation]).to include('とパスワードの入力が一致しません')
    end
  end
  context '登録済みの場合' do
    it 'パスワードが暗号化されている' do
      user = FactoryBot.create(:user, email: 'tester@example.com')
      expect(user.password_digest).to_not eq 'foobar'
    end
  end
end
