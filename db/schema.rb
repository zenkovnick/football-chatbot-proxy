# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170802183559) do

  create_table "competitions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "caption"
    t.string "league"
    t.integer "year"
    t.integer "number_of_teams"
    t.integer "number_of_games"
    t.datetime "last_updated"
  end

  create_table "fixtures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "competiotion_id"
    t.datetime "date"
    t.integer "match_day"
    t.integer "home_team_id"
    t.integer "away_team_id"
    t.integer "home_team_goals"
    t.integer "away_team_goals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["away_team_id"], name: "index_fixtures_on_away_team_id"
    t.index ["competiotion_id"], name: "index_fixtures_on_competiotion_id"
    t.index ["home_team_id"], name: "index_fixtures_on_home_team_id"
  end

  create_table "league_tables", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "team_id"
    t.integer "played_games"
    t.integer "point"
    t.integer "goals"
    t.integer "goals_against"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_league_tables_on_team_id"
  end

  create_table "players", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "position"
    t.integer "jersey_number"
    t.datetime "date_of_birth"
    t.string "nationality"
    t.datetime "contract_until"
    t.integer "market_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "competition_id"
    t.string "name"
    t.string "short_name"
    t.integer "squad_market_value"
    t.string "crest_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competition_id"], name: "index_teams_on_competition_id"
  end

end
