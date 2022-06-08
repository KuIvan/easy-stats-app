module Types
  module Common
    class GameSquadPlayerType < Types::BaseObject
      graphql_name 'GameSquadPlayer'
      description 'GameSquadPlayer object type'

      field :id, ID, null: false
      field :games_squad, Types::Common::GamesSquadType
      field :user, Types::Common::UserType
      field :seasons_squads_player, Types::Common::SeasonSquadPlayerType
      field :play_time, Int, null: false
      field :goals_count, Int, null: true
      field :assist_count, Int, null: true
      field :yellow_card_count, Int, null: true
      field :red_card_count, Int, null: true

      def goals_count
        object.game.actions.where('scope = 0 AND initiator_id = :game_squad_player', game_squad_player: object.id).count
      end

      def assist_count
        puts object.game.actions.where('scope = 1 AND initiator_id = :game_squad_player', game_squad_player: object.id).count
      end

      def yellow_card_count
        puts object.game.actions.where('scope = 14 AND initiator_id = :game_squad_player', game_squad_player: object.id).count
      end

      def red_card_count
        puts object.game.actions.where('scope = 15 AND initiator_id = :game_squad_player', game_squad_player: object.id).count
      end


    end
  end
end