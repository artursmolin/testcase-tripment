source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Database
gem 'pg', '>= 0.18', '< 2.0'

# Framework
gem 'rails', '~> 6.0.3', '>= 6.0.3.3'

# Search
gem 'searchkick'

# Server
gem 'puma', '~> 4.1'
gem 'bootsnap', '>= 1.4.2', require: false

# Serializers
gem 'fast_jsonapi'

group :development, :test do
  gem 'pry'
  gem 'rspec-rails'
  gem 'rubocop-rails'
  gem 'rubocop-performance'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
