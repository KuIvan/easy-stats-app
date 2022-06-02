module Resolvers
  module Actions
    class FetchCurrentUserActions < Resolvers::BaseQuery

      type [Types::Common::ActionType], null: false

      argument :game_id, ID, required: true

      def resolve(game_id:)

        puts 'game_id'
        puts game_id.inspect
        puts 'game_id'

        # games_squads_players = GamesSquadsPlayer.joins(seasons_squads_player: { teams_player: :user }).where(seasons_squads_players: { teams_players: { user: current_user }})
        #
        # puts 'games_squads_players'
        # puts games_squads_players.inspect
        # puts 'games_squads_players'

        Game.find(game_id).actions.where(initiator: GamesSquadsPlayer.joins(seasons_squads_player: { teams_player: :user }).where(seasons_squads_players: { teams_players: { user: current_user }}))

        # Game.find(game_id).actions.where('initiator = :game_squad_player OR addressable = :game_squad_player', game_squad_player: games_squads_players)

        # if current_user.present?
        #   Game.find(game_id).actions.where('initiator = :game_squad_player OR addressable = :game_squad_player', game_squad_player:
        #     GamesSquadsPlayer.joins(seasons_squads_player: { teams_player: :user }).where(seasons_squads_players: { teams_players: { user: current_user }}  ))
        # else
        # end
      end

    end
  end
end