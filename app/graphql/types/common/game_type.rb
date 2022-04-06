module Types
  module Common
    class GameType < Types::BaseObject
      graphql_name 'Game'
      description 'Game object type'

      field :id, ID, null: false
      field :status, String, null: false
      field :game_day, GraphQL::Types::ISO8601DateTime, null: true

    end
  end
end
