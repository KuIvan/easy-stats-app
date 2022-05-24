module Types
  module Common
    class GameSquadPlayerType < Types::BaseObject
      graphql_name 'GameSquadPlayer'
      description 'GameSquadPlayer object type'

      field :id, ID, null: false
      field :games_squad, Types::Common::GamesSquadType
      field :seasons_squads_player, Types::Common::SeasonSquadPlayerType
      field :play_time, Int, null: false

    end
  end
end