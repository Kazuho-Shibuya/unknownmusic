require 'uri'
require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module UnknownMusic
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    # エラーメッセージ日本語化
    config.i18n.default_locale = :ja
    # 表示TimeZone
    config.time_zone = 'Tokyo'
    # DB読み書きをlocal(Tokyo)にする
    config.active_record.default_timezone = :local

    # 認証トークンをremoteフォームに埋め込む
    config.action_view.embed_authenticity_token_in_remote_forms = true

    # field_with_errorsタグを読み込まないようにする。レイアウト崩れ防止。
    config.action_view.field_error_proc = proc do |html_tag, _instance|
      html_tag.to_s.html_safe
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.generators do |g|
      g.test_framework :rspec,
                       view_specs: false,
                       helper_specs: false,
                       routing_specs: false
    end
  end
end
