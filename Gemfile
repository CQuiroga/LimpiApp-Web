source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.8'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
gem 'pg', '1.4'
#gem 'pg_search'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
#gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~> 3.3.7'
# gema para trabajar con sass
gem 'sass-rails', '>= 3.2'
# Gema para usar iconfonts
gem "font-awesome-rails"
# gema para hacer autenticación de usuarios
gem 'devise'
#gema para manejo de imágenes
gem 'carrierwave', '~> 1.0'
#gema para trabajar con jquery
gem 'jquery-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'duktape'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Gema de google maps
gem 'gmaps4rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pg', '1.4'
  gem 'web-console', '>= 3.6.2'
  gem 'rspec-rails', '2.10.0'
end

#group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
#  gem 'web-console', '>= 3.6.2'
#  gem 'sqlite3'
#end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
#ambiente producción
group :production do
  gem 'pg', '1.4'
  gem "rails_12factor"
end
