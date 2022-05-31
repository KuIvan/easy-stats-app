module Types
  module Common
    class ActionType < Types::BaseObject
      graphql_name 'Action'
      description 'Action object type'

      field :id, ID, null: false
      field :initiator, Types::Common::GameSquadPlayerType, null: false
      field :addressable, Types::Common::GameSquadPlayerType, null: false
      field :scope, Types::Enums::Action::ActionScope, null: false
      field :game, Types::Common::GameType, null: false
      field :is_successful, Boolean, null: false
      field :minute, Int, null: false
      field :created_at, GraphQL::Types::ISO8601DateTime, null: false
      field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    end
  end
end
