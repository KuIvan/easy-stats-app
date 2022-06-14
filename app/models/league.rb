class League < ApplicationRecord
  belongs_to :tournament
  has_many :seasons, dependent: :destroy

  validates :name, presence: true
end

# == Schema Information
#
# Table name: leagues
#
#  id            :bigint           not null, primary key
#  name          :string           default(""), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  tournament_id :bigint
#
# Indexes
#
#  index_leagues_on_tournament_id  (tournament_id)
#
# Foreign Keys
#
#  fk_rails_...  (tournament_id => tournaments.id)
#
