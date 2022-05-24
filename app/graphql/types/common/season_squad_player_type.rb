module Types
  module Common
    class SeasonSquadPlayerType < Types::BaseObject
      graphql_name 'SeasonSquadPlayer'
      description 'SeasonSquadPlayer object type'

      field :id, ID, null: false
      field :seasons_squad, Types::Common::SeasonsSquadType
      field :teams_player, Types::Common::TeamsPlayerType

    end
  end
end