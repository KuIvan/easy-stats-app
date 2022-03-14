class Game < ApplicationRecord
  include AASM

  belongs_to :stage
  belongs_to :host, optional: true, class_name: "GamesSquad"
  belongs_to :guest, optional: true, class_name: "GamesSquad"

  enum status: { scheduled: 0, canceled: 1, finished: 2 }

  validates :host_goals, :guest_goals, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

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
#  id          :bigint           not null, primary key
#  guest_goals :integer          default(0), not null
#  host_goals  :integer          default(0), not null
#  status      :integer          default("scheduled")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  guest_id    :bigint
#  host_id     :bigint
#  stage_id    :bigint
#
# Indexes
#
#  index_games_on_guest_id  (guest_id)
#  index_games_on_host_id   (host_id)
#  index_games_on_stage_id  (stage_id)
#
# Foreign Keys
#
#  fk_rails_...  (guest_id => games_squads.id)
#  fk_rails_...  (host_id => games_squads.id)
#  fk_rails_...  (stage_id => stages.id)
#
