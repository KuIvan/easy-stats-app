module Types
  class QueryType < Types::BaseObject

    # NOTE: we may will want to split it to field groups (assets, users, etc...)

    # Users
    field :fetch_users, resolver: Resolvers::Users::FetchUsers
    field :get_user, resolver: Resolvers::Users::GetUser

    # Federations
    field :fetch_federations, resolver: Resolvers::Federations::FetchFederations

    # Games
    field :fetch_games, resolver: Resolvers::Games::FetchGames
    field :get_game, resolver: Resolvers::Games::GetGame

  end
end
