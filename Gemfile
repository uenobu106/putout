source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development


gem 'haml-rails' #hamlテンプレートエンジン
gem 'erb2haml'
gem 'font-awesome-rails' #WEBアイコン
#マテリアルデザイン用ブートストラップ
gem 'jquery-rails'
gem 'rails-ujs'
gem 'jquery-turbolinks'
gem 'bootstrap',     '~> 4.0.0.beta'
gem 'material-sass', '~> 4.0.0.beta'
gem 'material_icons'
gem 'devise'

# API用のgem
# gem 'bing-search'
# gem 'cognitivebing'
# gem 'searchbing', '~> 0.2.6'

# .envファイルに環境
# gem 'dotenv-rails'
# gem 'unicorn'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry'
  gem 'better_errors'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'hirb'         # モデルの出力結果を表形式で表示するGem Hirb.enable
  gem 'hirb-unicode' # 日本語などマルチバイト文字の出力時の出力結果のずれに対応
end


group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'brakeman'

  gem 'bullet' # N+1問題

  gem 'xray-rails'# Viewセクション確認
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


group :test do
  gem "database_cleaner"
  gem "launchy"
  gem "selenium-webdriver"
end