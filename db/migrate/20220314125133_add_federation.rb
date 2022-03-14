class AddFederation < ActiveRecord::Migration[6.1]
  def change
    create_table :federations do |t|
      t.string :name, null: false, default: ""

      t.timestamps null: false
    end
    add_index :federations, :name, unique: true

    create_table :tournaments do |t|
      t.belongs_to :federation, foreign_key: true

      t.string :name, null: false, default: ""
      t.timestamps null: false
    end

    create_table :leagues do |t|
      t.belongs_to :tournament, foreign_key: true

      t.string :name, null: false, default: ""
      t.timestamps null: false
    end

    create_table :seasons do |t|
      t.belongs_to :league, foreign_key: true

      t.datetime :started_at
      t.datetime :finished_at
      t.timestamps null: false
    end

    create_table :stages do |t|
      t.belongs_to :season, foreign_key: true

      t.string :name, null: false, default: ""
      t.integer :scope, null: false, default: 0
      t.timestamps null: false
    end
  end
end
