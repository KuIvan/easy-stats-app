module Types
  module Common
    class UserType < Types::BaseObject
      graphql_name 'User'
      description 'User object type'

      field :id, ID, null: false

      field :created_at, GraphQL::Types::ISO8601DateTime, null: false
      field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    end
  end
end
