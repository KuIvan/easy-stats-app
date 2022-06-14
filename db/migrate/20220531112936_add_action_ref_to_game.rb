class AddActionRefToGame < ActiveRecord::Migration[6.1]
  def change
    add_reference :actions, :game, foreign_key: { to_table: :games }, index: true, null: false
  end
end
