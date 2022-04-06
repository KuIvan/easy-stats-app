class AddGame < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.belongs_to :stage, foreign_key: true
      # t.belongs_to :host, class_name: "GamesSquad"
      # t.belongs_to :guest, class_name: "GamesSquad"

      # t.integer :host_goals, null: false, default: 0
      # t.integer :guest_goals, null: false, default: 0
      t.integer :status, default: 0
      t.datetime :game_day
      t.timestamps null: false
    end
    # add_foreign_key "games", "games_squads", column: "host_id"
    # add_foreign_key "games", "games_squads", column: "guest_id"

    create_table :games_squads do |t|
      t.belongs_to :seasons_squad, foreign_key: true
      t.belongs_to :game, foreign_key: true
      t.integer :goals
      t.integer :status, default: 0
      t.timestamps null: false
    end

    create_table :games_squads_players do |t|
      t.belongs_to :games_squad, foreign_key: true
      t.belongs_to :seasons_squads_player, foreign_key: true
      t.integer :play_time, default: 0
      t.timestamps null: false
    end

    create_table :actions do |t|
      t.belongs_to :initiator, class_name: "GamesSquadsPlayer"
      t.belongs_to :addressable, class_name: "GamesSquadsPlayer"

      t.integer :scope, null: false, default: 0
      t.integer :minute, default: 1
      t.boolean :is_successful, null: false, default: true
      t.timestamps null: false
    end
    add_foreign_key "actions", "games_squads_players", column: "initiator_id"
    add_foreign_key "actions", "games_squads_players", column: "addressable_id"
  end
end