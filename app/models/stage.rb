class Stage < ApplicationRecord
  belongs_to :season
  has_many :games, dependent: :destroy

  enum scope: {
    regular:  0,
    play_off: 1,
  }

  validates :name, presence: true

end

# == Schema Information
#
# Table name: stages
#
#  id         :bigint           not null, primary key
#  name       :string           default(""), not null
#  scope      :integer          default("regular"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  season_id  :bigint
#
# Indexes
#
#  index_stages_on_season_id  (season_id)
#
# Foreign Keys
#
#  fk_rails_...  (season_id => seasons.id)
#
