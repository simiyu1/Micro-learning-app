# Gemfile
ruby "2.6.1"

source 'https://rubygems.org'

# SinatraRB Framework
gem "sinatra"

gem "bundler"

# Our database gem/mapper/model
gem "activerecord"
gem "sinatra-activerecord"

gem "json"

# Shotgun allows for restarting the server when changes are made

gem "shotgun"

# add Gem for postgre
gem "pg"

# gem for encryption
gem "bcrypt"

# allow require all
gem "require_all"

# Add Coveralls
gem 'coveralls', require: false

# Add CodeCov
gem 'codecov', :require => false, :group => :test

gem 'rake'



# With this we are going to require tux only on development mode.
# tux is a tool that allows you to interact with your Sinatra app from a command line
# We are going to use that to insert/fill our DB and test a few things.
group :development do
 gem "tux"
 gem "pry"
end

# For the test environment
group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner'
end