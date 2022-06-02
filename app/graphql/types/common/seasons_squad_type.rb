module Types
  module Common
    class SeasonsSquadType < Types::BaseObject
      graphql_name 'SeasonsSquad'
      description 'SeasonsSquad object type'

      field :id, ID, null: false
      field :team, Types::Common::TeamType, null: false
      field :games_squads, Types::Common::GamesSquadType, null: false

    end
  end
end

# Game.first.actions.where(initiator_id: User.find(3).id)
# GamesSquadsPlayer.joins(seasons_squads_player: { teams_player: :user }).where(seasons_squads_players: { teams_players: { user: User.find(3) } })