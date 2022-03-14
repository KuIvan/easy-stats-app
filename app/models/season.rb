class Season < ApplicationRecord
  belongs_to :league
  has_many :stages, dependent: :destroy
  has_many :seasons_squads, dependent: :destroy
end

# == Schema Information
#
# Table name: seasons
#
#  id          :bigint           not null, primary key
#  finished_at :datetime
#  started_at  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  league_id   :bigint
#
# Indexes
#
#  index_seasons_on_league_id  (league_id)
#
# Foreign Keys
#
#  fk_rails_...  (league_id => leagues.id)
#
