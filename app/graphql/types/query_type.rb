module Types
  class QueryType < Types::BaseObject

    # NOTE: we may will want to split it to field groups (assets, users, etc...)

    # Users
    # field :fetch_users, Types::Connection::UserConnection, resolver: Resolvers::Users::FetchUsers
    field :fetch_users, resolver: Resolvers::Users::FetchUsers

  end
end
