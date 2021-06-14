require 'rails_helper'

RSpec.describe UserMailer, type: :mailer do
  let(:user) { FactoryBot.create(:user) }

  describe '#account_activation' do
    let(:mail) { UserMailer.account_activation(user) }
    let(:mail_body) do
      part = mail.body.parts.detect do |p|
        p.content_type = 'text/html; charset=UTF-8'
      end
      part.body.raw_source
    end
    example 'メールヘッダーの内容が正しいこと' do
      expect(mail.from).to eq ['noreply@unknownmusic.net']
      expect(mail.subject).to eq 'アカウントの有効化'
    end

    example 'メール内容が正しいこと' do
      expect(mail_body).to match user.name
      expect(mail_body).to match user.activation_token
      expect(mail_body).to match CGI.escape(user.email)
    end
  end

  describe '#password_reset' do
    let(:mail) { UserMailer.password_reset(user) }
    let(:mail_body) do
      part = mail.body.parts.detect do |p|
        p.content_type = 'text/html; charset=UTF-8'
      end
      part.body.raw_source
    end
    example 'メールヘッダーの内容が正しいこと' do
      user.reset_token = User.new_token
      expect(mail.from).to eq ['noreply@unknownmusic.net']
      expect(mail.subject).to eq 'パスワードのリセット'
    end

    example 'メール内容が正しいこと' do
      user.reset_token = User.new_token
      expect(mail_body).to match user.reset_token
      expect(mail_body).to match CGI.escape(user.email)
    end
  end
end
