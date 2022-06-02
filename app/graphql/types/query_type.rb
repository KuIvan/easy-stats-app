module Types
  class QueryType < Types::BaseObject

    # NOTE: we may will want to split it to field groups (assets, users, etc...)

    # Users
    field :fetch_users, resolver: Resolvers::Users::FetchUsers
    field :get_user, resolver: Resolvers::Users::GetUser
    field :get_current_user, resolver: Resolvers::Users::GetCurrentUser

    # Federations
    field :fetch_federations, resolver: Resolvers::Federations::FetchFederations

    # Actions
    # field :fetch_action_scopes, resolver: Resolvers::Actions::FetchActionScopes
     field :fetch_current_user_actions, resolver: Resolvers::Actions::FetchCurrentUserActions

    # Games
    field :fetch_games, resolver: Resolvers::Games::FetchGames
    field :get_game, resolver: Resolvers::Games::GetGame
    field :fetch_all_games, resolver: Resolvers::Games::FetchAllGames

  end
end
