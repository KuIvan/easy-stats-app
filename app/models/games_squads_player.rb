class GamesSquadsPlayer < ApplicationRecord
  belongs_to :games_squad
  belongs_to :seasons_squads_player
  belongs_to :user
  has_one :game, through: :games_squad
  has_one :teams_player, through: :seasons_squads_player
  validates :play_time, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

end

# == Schema Information
#
# Table name: games_squads_players
#
#  id                       :bigint           not null, primary key
#  play_time                :integer          default(0)
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  games_squad_id           :bigint
#  seasons_squads_player_id :bigint
#  user_id                  :bigint           not null
#
# Indexes
#
#  index_games_squads_players_on_games_squad_id            (games_squad_id)
#  index_games_squads_players_on_seasons_squads_player_id  (seasons_squads_player_id)
#  index_games_squads_players_on_user_id                   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (games_squad_id => games_squads.id)
#  fk_rails_...  (seasons_squads_player_id => seasons_squads_players.id)
#  fk_rails_...  (user_id => users.id)
#
