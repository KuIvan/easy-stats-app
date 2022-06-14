class SeasonsSquad < ApplicationRecord
  belongs_to :team
  belongs_to :season
  has_many :seasons_squads_players, dependent: :destroy
  has_many :games_squads, dependent: :destroy
end

# == Schema Information
#
# Table name: seasons_squads
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  season_id  :bigint
#  team_id    :bigint
#
# Indexes
#
#  index_seasons_squads_on_season_id  (season_id)
#  index_seasons_squads_on_team_id    (team_id)
#
# Foreign Keys
#
#  fk_rails_...  (season_id => seasons.id)
#  fk_rails_...  (team_id => teams.id)
#
