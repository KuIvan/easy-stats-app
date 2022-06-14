module Resolvers
  module Actions
    class FetchCurrentUserActions < Resolvers::BaseQuery

      type [Types::Common::ActionType], null: false

      argument :game_id, ID, required: true

      def resolve(game_id:)

        user_player = GamesSquadsPlayer.find_by(user: current_user, games_squad: GamesSquad.where(game_id: game_id))

        # Action.where(game: Game.find(game_id)).where('initiator_id = :game_squad_player OR addressable_id = :game_squad_player', game_squad_player: user_player.id)

        Action.where('game_id = :game_id AND (initiator_id = :game_squad_player OR addressable_id = :game_squad_player)', game_squad_player: user_player.id, game_id: game_id)

      end

    end
  end
end