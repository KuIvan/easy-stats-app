source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '3.0.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.4'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'
# Used to encapsulate application's business logic
gem 'interactor'
# Flexible authentication solution for Rails based on Warden
gem 'devise'
# Extension which uses JWT tokens for user authentication
gem 'devise-jwt'
gem 'email_validator'
gem 'digest'
group :development, :test do
  gem 'dotenv-rails'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'rubocop-rails', require: false # Extension focused on enforcing Rails best practices and coding conventions
  gem 'annotate' # Used to add a comment summarizing the current schema
  gem 'bullet' # Used to increase application performance by reducing the number of queries it makes.
  gem 'amazing_print' # Used to prints Ruby objects in full color exposing their internal structure with proper indentation
  gem 'rack-mini-profiler' # Middleware that displays speed badge for every html page
  gem 'listen', '~> 3.3'
  gem 'spring' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
