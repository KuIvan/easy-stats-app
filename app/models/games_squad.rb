class GamesSquad < ApplicationRecord
  belongs_to :seasons_squad
  belongs_to :game, optional: true
  # has_one :host_game, class_name: "Game", foreign_key: "host_id"
  # has_one :guest_game, class_name: "Game", foreign_key: "guest_id"
  has_many :games_squads_player, dependent: :destroy

  # validates :goals, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  enum status: { host: 0, guest: 1 }
end

# == Schema Information
#
# Table name: games_squads
#
#  id               :bigint           not null, primary key
#  goals            :integer
#  status           :integer          default("host")
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  game_id          :bigint
#  seasons_squad_id :bigint
#
# Indexes
#
#  index_games_squads_on_game_id           (game_id)
#  index_games_squads_on_seasons_squad_id  (seasons_squad_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#  fk_rails_...  (seasons_squad_id => seasons_squads.id)
#
