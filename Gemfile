source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'
gem 'rails', '5.2.4.4'

gem 'actionpack', '>= 5.2.4.3'
gem 'activestorage', '>= 5.2.4.3'
gem 'activesupport', '>= 5.2.4.3'
gem 'bcrypt', '3.1.12'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap', '>= 4.3.1'
gem 'bootstrap4-kaminari-views'
gem 'carrierwave'
gem 'coffee-rails', '~> 4.2'
gem 'counter_culture', '~> 1.8'
gem 'dotenv-rails'
gem 'fog-aws'
gem 'font-awesome-sass'
gem 'http_accept_language'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'kaminari', '>= 1.2.1'
gem 'mini_magick'
gem 'miyabi'
gem 'mysql2', '~> 0.5.3'
gem 'puma', '~> 3.11'
gem 'rails_12factor', group: :production
gem 'rails-i18n'
gem 'romkan', '~> 0.4.0'
gem 'sassc-rails'
gem 'turbolinks', '~> 5'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'uglifier', '>= 1.3.0'
gem 'unicorn'
gem 'websocket-extensions', '>= 0.1.5'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'database_cleaner'
  gem 'factory_bot_rails', '~> 4.10.0'
  gem 'rspec-rails', '~> 3.6.0'
end

group :development do
  gem 'annotate'
  gem 'brakeman'
  gem 'gem_sort'
  gem 'letter_opener'
  gem 'letter_opener_web', '~> 1.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'mini_racer'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'chromedriver-helper'
  gem 'faker', '1.7.3'
  gem 'launchy', '~> 2.4.3'
  gem 'selenium-webdriver'
end

group :production, :staging do
  gem 'aws-ses', '~> 0.6'
end
