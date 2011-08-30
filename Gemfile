source 'http://rubygems.org'

gem 'rails', '3.1.0.rc5'
gem 'arel', '2.1.4'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

# Deploy with Capistrano
gem 'capistrano'

# Asset template engines
gem 'sass-rails', "~> 3.1.0.rc"
gem 'coffee-script'
gem 'uglifier'
gem 'haml-rails'
gem 'jquery-rails'
gem 'formtastic'
gem 'RedCloth'

# Authentication
gem 'devise'
gem "oa-enterprise", :git => "https://github.com/intridea/omniauth.git"
gem 'oa-oauth', :git => "https://github.com/intridea/omniauth.git"
gem 'net-ldap'
gem 'rest-client'

# Authorization
gem 'cancan'

# Useful gems
gem 'paperclip'
gem 'acts-as-taggable-on'
#gem 'simple-navigation'
#gem 'i18n_routing'
#gem 'friendly_id'

group :production do
  gem 'mysql2'
end

group :development, :test do
  gem 'rspec-rails'
end

group :development do
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'sqlite3-ruby'
end

group :test do
  gem 'cucumber-rails'
  gem 'pickle'
  gem 'capybara'
  gem 'webrat'
  gem 'launchy'
  gem 'machinist', '>= 2.0.0.beta2'
  gem 'database_cleaner'

  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-cucumber'

  # notifications on linux
  gem 'rb-inotify', :require => false if RUBY_PLATFORM =~ /linux/i
  gem 'libnotify', :require => false if RUBY_PLATFORM =~ /linux/i

  # notifications on mac
  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'growl', :require => false if RUBY_PLATFORM =~ /darwin/i
end
