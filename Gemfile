source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '4.1.5'

group :development do
  gem 'sqlite3',     '1.3.9'
  gem 'admin_view'
  gem "chronic"
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
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

group :test, :development do
  gem "rspec-rails"
  gem "debugger"
  gem "awesome_print"
end

gem 'turbolinks'
# Use jQuery as the JavaScript library
gem "jquery-rails"

gem 'jquery-turbolinks'

gem 'thin'
#Chat Server Gem
gem 'faye-rails', '~> 2.0'

gem 'tzinfo-data', platforms: [:mingw, :mswin]

gem "uglifier", ">= 1.3.0"
# Use CoffeeScript for .js.coffee assets and views
gem "coffee-rails", "~> 4.0.0"

# User authentication
gem "devise", "3.2.4"
#Facebook Auth
gem "omniauth-facebook"
#Pagination! Makes lists soopar eazy
gem "kaminari"
#gives us a nice way to search through ruby lists 
gem "ransack", ">= 1.2.3"
#quick forms with built in JS 
gem "dynamic_form"
#sass compiler, Sassy CSS faster and lighter then regular css
gem 'sass-rails',              '5.0.0.beta1'
#random name generator, only needed for seed user names
gem 'faker',                   '1.4.2'
