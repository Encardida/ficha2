source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
#generate a ER Diagram
group :development do
  gem "rails-erd"
end
#roles
gem 'rolify'
#updates crontab
gem 'whenever'
#does the backup
gem 'backup', '~> 5.0.0.beta.1'
#json for this version of backup gem
gem 'json', "~> 1.8"
#coffe-script
gem 'coffee-rails'
# importing
gem 'remotipart', '~> 1.2'
gem "roo", "~> 2.7.0"
gem 'roo-xls'
# prawn
gem 'prawn'
gem 'prawn-table'
gem 'responders'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# pundit
gem 'pundit'

#will_paginate
gem 'will_paginate', '~> 3.1.0'

# Ransack
gem 'ransack'

gem "chartkick"

# Login
gem 'devise', '~> 4.0'

# Bootstrap gems
gem 'less-rails' # deprecated
gem 'twitter-bootstrap-rails'

gem 'sprockets', '3.7.1'
gem 'autoprefixer-rails'

# deploy with passenger and apache2
#gem 'passenger'

gem 'libv8'
gem 'rails-i18n'

gem 'faker'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.2'
# Use sqlite3 as the database for Active Record

gem 'mysql2'
# Use Puma as the app server
gem 'unicorn'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'awesome_print'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
