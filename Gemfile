source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use jquery as the JavaScript library and JQ mobile
gem 'jquery-rails'
gem 'jquery_mobile_rails'

# i18n support for rails
gem 'rails-i18n'

# Own exception handling
gem 'rails_exception_handler'

# DB
gem 'sqlite3'


group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', :require => false
end


group :development, :test do

  # Debugger for 1.9.x
  #  gem 'debase'
  #  gem 'ruby-debug-ide'
  #  gem 'debugger'
  gem 'binding_of_caller'
  #  gem 'selenium-webdriver'

  # Better error views.
  gem "better_errors"

  # Makes all things faster in the development.
  gem 'spring'
end


group :test do

  # Test framework
  gem 'rspec'
  gem 'rspec-rails'
  gem 'cucumber-rails', :require => false
#  gem 'capybara'
#  gem 'launchy'

# Vacuum cleaner for the test database.
  gem 'database_cleaner'
end

group :production do

  # Production database
#  gem 'pg'

end
