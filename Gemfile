source 'https://rubygems.org'
gem 'sinatra'
gem 'data_mapper'
gem 'jwt'
gem 'sinatra-namespace'

group :development do
  gem 'sqlite3', '~> 1.3', '< 1.4'
  gem "dm-sqlite-adapter"
  gem 'rspec'
  gem 'rack-test'
  gem 'dm-rspec'
end

group :production do
  gem 'pg'
  gem 'dm-postgres-adapter'
end