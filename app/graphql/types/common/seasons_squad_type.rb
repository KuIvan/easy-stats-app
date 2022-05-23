module Types
  module Common
    class SeasonsSquadType < Types::BaseObject
      graphql_name 'SeasonsSquad'
      description 'SeasonsSquad object type'

      field :id, ID, null: false
      field :team, Types::Common::TeamType, null: false

    end
  end
end