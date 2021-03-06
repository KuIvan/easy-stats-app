# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_02_114235) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.bigint "initiator_id"
    t.bigint "addressable_id"
    t.integer "scope", default: 0, null: false
    t.integer "minute", default: 1
    t.boolean "is_successful", default: true, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "game_id", null: false
    t.index ["addressable_id"], name: "index_actions_on_addressable_id"
    t.index ["game_id"], name: "index_actions_on_game_id"
    t.index ["initiator_id"], name: "index_actions_on_initiator_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "federations", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_federations_on_name", unique: true
  end

  create_table "games", force: :cascade do |t|
    t.bigint "stage_id"
    t.integer "status", default: 0
    t.datetime "game_day"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["stage_id"], name: "index_games_on_stage_id"
  end

  create_table "games_squads", force: :cascade do |t|
    t.bigint "seasons_squad_id"
    t.bigint "game_id"
    t.integer "goals"
    t.integer "status", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_games_squads_on_game_id"
    t.index ["seasons_squad_id"], name: "index_games_squads_on_seasons_squad_id"
  end

  create_table "games_squads_players", force: :cascade do |t|
    t.bigint "games_squad_id"
    t.bigint "seasons_squads_player_id"
    t.integer "play_time", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["games_squad_id"], name: "index_games_squads_players_on_games_squad_id"
    t.index ["seasons_squads_player_id"], name: "index_games_squads_players_on_seasons_squads_player_id"
    t.index ["user_id"], name: "index_games_squads_players_on_user_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.bigint "tournament_id"
    t.string "name", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tournament_id"], name: "index_leagues_on_tournament_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.bigint "league_id"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["league_id"], name: "index_seasons_on_league_id"
  end

  create_table "seasons_squads", force: :cascade do |t|
    t.bigint "season_id"
    t.bigint "team_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["season_id"], name: "index_seasons_squads_on_season_id"
    t.index ["team_id"], name: "index_seasons_squads_on_team_id"
  end

  create_table "seasons_squads_players", force: :cascade do |t|
    t.bigint "teams_player_id"
    t.bigint "seasons_squad_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["seasons_squad_id"], name: "index_seasons_squads_players_on_seasons_squad_id"
    t.index ["teams_player_id"], name: "index_seasons_squads_players_on_teams_player_id"
  end

  create_table "stages", force: :cascade do |t|
    t.bigint "season_id"
    t.string "name", default: "", null: false
    t.integer "scope", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["season_id"], name: "index_stages_on_season_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams_players", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "team_id"
    t.string "number", null: false
    t.integer "status", default: 0, null: false
    t.datetime "started_at"
    t.datetime "finished_at"
    t.integer "games_count", default: 0, null: false
    t.integer "goals_count", default: 0, null: false
    t.integer "assists_count", default: 0, null: false
    t.integer "yellow_cards_count", default: 0, null: false
    t.integer "red_cards_count", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_teams_players_on_team_id"
    t.index ["user_id"], name: "index_teams_players_on_user_id"
  end

  create_table "tournaments", force: :cascade do |t|
    t.bigint "federation_id"
    t.string "name", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["federation_id"], name: "index_tournaments_on_federation_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.string "name", null: false
    t.string "jti", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.date "birthday"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "actions", "games"
  add_foreign_key "actions", "games_squads_players", column: "addressable_id"
  add_foreign_key "actions", "games_squads_players", column: "initiator_id"
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "games", "stages"
  add_foreign_key "games_squads", "games"
  add_foreign_key "games_squads", "seasons_squads"
  add_foreign_key "games_squads_players", "games_squads"
  add_foreign_key "games_squads_players", "seasons_squads_players"
  add_foreign_key "games_squads_players", "users"
  add_foreign_key "leagues", "tournaments"
  add_foreign_key "seasons", "leagues"
  add_foreign_key "seasons_squads", "seasons"
  add_foreign_key "seasons_squads", "teams"
  add_foreign_key "seasons_squads_players", "seasons_squads"
  add_foreign_key "seasons_squads_players", "teams_players"
  add_foreign_key "stages", "seasons"
  add_foreign_key "teams_players", "teams"
  add_foreign_key "teams_players", "users"
  add_foreign_key "tournaments", "federations"
end
