module Types
  module Common
    class GamesSquadType < Types::BaseObject
      graphql_name 'GamesSquad'
      description 'GamesSquad object type'

      field :id, ID, null: false
      field :status, String, null: false
      field :goals, Int, null: false
      field :seasons_squad, Types::Common::SeasonsSquadType, null: false

    end
  end
end