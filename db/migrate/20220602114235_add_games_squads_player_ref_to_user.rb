class AddGamesSquadsPlayerRefToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :games_squads_players, :user, foreign_key: { to_table: :users }, index: true, null: false
  end
end
