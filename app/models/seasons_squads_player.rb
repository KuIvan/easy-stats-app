class SeasonsSquadsPlayer < ApplicationRecord
  belongs_to :teams_player
  belongs_to :seasons_squad
  has_many :games_squads_player, dependent: :destroy
end

# == Schema Information
#
# Table name: seasons_squads_players
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  seasons_squad_id :bigint
#  teams_player_id  :bigint
#
# Indexes
#
#  index_seasons_squads_players_on_seasons_squad_id  (seasons_squad_id)
#  index_seasons_squads_players_on_teams_player_id   (teams_player_id)
#
# Foreign Keys
#
#  fk_rails_...  (seasons_squad_id => seasons_squads.id)
#  fk_rails_...  (teams_player_id => teams_players.id)
#
