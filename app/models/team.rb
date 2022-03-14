class Team < ApplicationRecord
  has_many :teams_players, dependent: :destroy
  has_many :seasons_squads, dependent: :destroy

  validates :name, presence: true
end

# == Schema Information
#
# Table name: teams
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
