class Action < ApplicationRecord
  belongs_to :initiator, class_name: "GamesSquadsPlayer"
  belongs_to :addressable, optional: true, class_name: "GamesSquadsPlayer"
  enum scope: {
    goal: 0,
    assist: 1,
    foul: 2,
    earned_foul: 3,
    shot: 4,
    pass: 5,
    key_pass: 6,
    dribbling: 7,
    losing_the_ball: 8,
    steal: 9,
    interception: 10,
    block: 11,
    position_error: 12,
    created_moment: 13,
    yellow_card: 14,
    red_card: 15,
  }

  validates :minute, numericality: { only_integer: true, greater_than_or_equal_to: 1 }

end

# == Schema Information
#
# Table name: actions
#
#  id             :bigint           not null, primary key
#  is_successful  :boolean          default(TRUE), not null
#  minute         :integer          default(1)
#  scope          :integer          default("goal"), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  addressable_id :bigint
#  initiator_id   :bigint
#
# Indexes
#
#  index_actions_on_addressable_id  (addressable_id)
#  index_actions_on_initiator_id    (initiator_id)
#
# Foreign Keys
#
#  fk_rails_...  (addressable_id => games_squads_players.id)
#  fk_rails_...  (initiator_id => games_squads_players.id)
#
