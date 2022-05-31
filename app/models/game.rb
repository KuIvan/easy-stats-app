class Game < ApplicationRecord
  include AASM

  belongs_to :stage
  # belongs_to :host, optional: true, class_name: "GamesSquad"
  # belongs_to :guest, optional: true, class_name: "GamesSquad"
  has_many :games_squads, dependent: :destroy
  has_many :actions, dependent: :destroy

  enum status: { scheduled: 0, canceled: 1, finished: 2 }

  # validates :host_goals, :guest_goals, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  aasm column: :status, enum: true do
    state :scheduled, initial: true
    state :canceled, :finished

    event :cancel do
      transitions from: :scheduled, to: :canceled
    end

    event :finish do
      transitions from: :scheduled, to: :finished
    end

  end
end

# == Schema Information
#
# Table name: games
#
#  id         :bigint           not null, primary key
#  game_day   :datetime
#  status     :integer          default("scheduled")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  stage_id   :bigint
#
# Indexes
#
#  index_games_on_stage_id  (stage_id)
#
# Foreign Keys
#
#  fk_rails_...  (stage_id => stages.id)
#
