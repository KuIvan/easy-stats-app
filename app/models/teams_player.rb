class TeamsPlayer < ApplicationRecord

  belongs_to :team
  belongs_to :user

  enum status: { playing: 0, finished: 1 }

  validates :number, :status, :games_count, :goals_count, :assists_count, :red_cards_count, :yellow_cards_count,
            presence: true
end

# == Schema Information
#
# Table name: teams_players
#
#  id                 :bigint           not null, primary key
#  assists_count      :integer          default(0), not null
#  finished_at        :datetime
#  games_count        :integer          default(0), not null
#  goals_count        :integer          default(0), not null
#  number             :string           not null
#  red_cards_count    :integer          default(0), not null
#  started_at         :datetime
#  status             :integer          default("playing"), not null
#  yellow_cards_count :integer          default(0), not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  team_id            :bigint
#  user_id            :bigint
#
# Indexes
#
#  index_teams_players_on_team_id  (team_id)
#  index_teams_players_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (team_id => teams.id)
#  fk_rails_...  (user_id => users.id)
#
