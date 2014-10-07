# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141007184938) do

  create_table "events", primary_key: "event_id", force: true do |t|
    t.string   "type"
    t.integer  "minute"
    t.boolean  "hometeam"
    t.integer  "player_id"
    t.string   "score"
    t.integer  "matches_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", primary_key: "match_id", force: true do |t|
    t.date     "date"
    t.datetime "time"
    t.integer  "hometeam"
    t.integer  "home_score"
    t.integer  "visitor"
    t.integer  "visitor_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", primary_key: "player_id", force: true do |t|
    t.string   "name"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", primary_key: "team_id", force: true do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end