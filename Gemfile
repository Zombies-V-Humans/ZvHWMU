source "https://rubygems.org"

gem "rails", "4.1.1"
# Compressor of JavaScript assets
gem "uglifier", ">= 1.3.0"
# Use CoffeeScript for .js.coffee assets and views
gem "coffee-rails", "~> 4.0.0"
# Use jQuery as the JavaScript library
gem "jquery-rails"
# User authentication
gem "devise", "3.2.4"
gem "omniauth-facebook"
gem "kaminari"
gem "ransack"

gem "dynamic_form"
gem 'sass-rails',              '5.0.0.beta1'
#random name generator
gem 'faker',                   '1.4.2'

group :test, :development do
  gem "rspec-rails"
  gem "debugger"
  gem "awesome_print"
end

group :development do
  gem 'sqlite3',     '1.3.9'
  gem "chronic"
  gem "admin_view"
end

group :test do
  gem "factory_girl_rails"
  gem "cucumber-rails", :require => false
  gem "database_cleaner"
  gem "selenium-webdriver"
  gem "capybara"
  gem "shoulda"
  gem "email_spec"
end

group :production, :development do
  
# Use PostgreSQL as the database for Active Record
gem "pg", :require => "pg"

  gem "thin"
end


group :development, :test do

  gem 'byebug',      '3.4.0'
  gem 'web-console', '2.0.0.beta3'
  gem 'spring',      '1.1.3'
end


