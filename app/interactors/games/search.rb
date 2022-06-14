module Games
  class Search
    include Interactor

    def call
      # games_squads_player_ids = GamesSquadsPlayer.select(:games_squad_id)
      #                                            .joins(seasons_squads_player: { teams_player: :user })
      #                                            .where(seasons_squads_players: { teams_players: { user: context.user } })
      #                                            .pluck(:games_squad_id)
      # Game.joins("INNER JOIN games_squads ON games_squads.id = games.host_id OR games_squads.id = games.guest_id")
      #     .where("games_squads.id IN (?)", games_squads_player_ids)
      #     .order(created_at: :desc).page(1).per(10)
      context.games = Game.joins(games_squads: { games_squads_player: { seasons_squads_player: { teams_player: :user } } })
                          .where(games_squads: { games_squads_players: { seasons_squads_players: { teams_players: { user: context.user } } } })
                          .order(game_day: :desc)
                          .includes(games_squads: { seasons_squad: { team: :team_photo_attachment } }, stage: { season: { league: :tournament } })
    end

  end
end
