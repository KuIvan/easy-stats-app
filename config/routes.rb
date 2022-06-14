Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    registrations: 'users/registrations',
  }

  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql' if Rails.env.development?
  post '/graphql', to: 'graphql#execute'


end
