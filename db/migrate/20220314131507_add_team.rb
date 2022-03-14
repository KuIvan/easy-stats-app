class AddTeam < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.timestamps null: false
    end

    create_table :teams_players do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :team, foreign_key: true

      t.string :number, null: false
      t.integer :status, null: false, default: 0
      t.datetime :started_at
      t.datetime :finished_at
      t.integer :games_count, null: false, default: 0
      t.integer :goals_count, null: false, default: 0
      t.integer :assists_count, null: false, default: 0
      t.integer :yellow_cards_count, null: false, default: 0
      t.integer :red_cards_count, null: false, default: 0

      t.timestamps null: false
    end

    create_table :seasons_squads do |t|
      t.belongs_to :season, foreign_key: true
      t.belongs_to :team, foreign_key: true

      t.timestamps null: false
    end

    create_table :seasons_squads_players do |t|
      t.belongs_to :teams_player, foreign_key: true
      t.belongs_to :seasons_squad, foreign_key: true

      t.timestamps null: false
    end

    add_column :users, :first_name, :string, null: false, default: ""
    add_column :users, :last_name, :string, null: false, default: ""
    add_column :users, :birthday, :date
  end
end
