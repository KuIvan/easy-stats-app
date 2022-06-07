module Actions
  class Search
    include Interactor

    def call

      actions = Action

      goals = actions.where('scope = 0 AND initiator_id = :game_squad_player', game_squad_player: context.user_player_id) if context.goals.present?
      assist = actions.where('scope = 1 AND initiator_id = :game_squad_player', game_squad_player: context.user_player_id) if context.assist.present?
      yellow = actions.where('scope = 14 AND initiator_id = :game_squad_player', game_squad_player: context.user_player_id) if context.yellow_card.present?
      red = actions.where('scope = 15 AND initiator_id = :game_squad_player', game_squad_player: context.user_player_id) if context.red_card.present?


      # NOTE: displayed only for one of the parameters
      # 
      # context.goals = [goals, assist, yellow, red]
    end

  end
end