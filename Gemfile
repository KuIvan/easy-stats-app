source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '3.0.2'

# Rails stack
begin
  gem 'rails', '~> 6.1.4'
  gem 'pg'
  gem 'puma'
  gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
end

# Custom gems
begin
  gem 'rack-cors'                          # https://github.com/cyu/rack-cors
  gem 'aasm'                               # https://github.com/aasm/aasm
  gem 'kaminari'                           # https://github.com/kaminari/kaminari
  gem 'interactor'                         # https://github.com/collectiveidea/interactor
  gem 'devise'                             # https://github.com/heartcombo/devise
  gem 'devise-jwt'                         # https://github.com/waiting-for-dev/devise-jwt
  gem 'email_validator'                    # https://github.com/K-and-R/email_validator
  gem 'digest'                             # https://github.com/ruby/digest
  gem 'graphql'                            # https://github.com/rmosolgo/graphql-ruby
  gem 'graphiql-rails'                     # https://github.com/rmosolgo/graphiql-rails
  gem "image_processing", ">= 1.2"         # https://github.com/janko/image_processing
end

group :development, :test do
  gem 'dotenv-rails'                                    # https://github.com/bkeepers/dotenv
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]   # https://github.com/deivid-rodriguez/byebug
end

group :development do
  gem 'rubocop-rails', require: false         # https://github.com/rubocop/rubocop-rails
  gem 'annotate'                              # https://github.com/ctran/annotate_models
  gem 'bullet'                                # https://github.com/flyerhzm/bullet
  gem 'amazing_print'                         # https://github.com/amazing-print/amazing_print
  gem 'rack-mini-profiler'                    # https://github.com/MiniProfiler/rack-mini-profiler
  gem 'listen', '~> 3.3'                      # https://github.com/guard/listen
  gem 'spring'                                # https://github.com/rails/spring
  gem 'faker'                                 # https://github.com/faker-ruby/faker.git
end
