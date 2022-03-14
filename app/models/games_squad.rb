class GamesSquad < ApplicationRecord
  belongs_to :seasons_squad
  has_one :host_game, class_name: "Game", foreign_key: "host_id"
  has_one :guest_game, class_name: "Game", foreign_key: "guest_id"
  has_many :games_squads_player, dependent: :destroy

end

# == Schema Information
#
# Table name: games_squads
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  seasons_squad_id :bigint
#
# Indexes
#
#  index_games_squads_on_seasons_squad_id  (seasons_squad_id)
#
# Foreign Keys
#
#  fk_rails_...  (seasons_squad_id => seasons_squads.id)
#
