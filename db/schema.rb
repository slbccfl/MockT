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

ActiveRecord::Schema.define(version: 20161006235618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ballots", force: :cascade do |t|
    t.integer  "judge_id"
    t.integer  "round_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cases", force: :cascade do |t|
    t.string   "caseName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competitions", force: :cascade do |t|
    t.string   "title"
    t.datetime "eventDatetime"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "institution_id"
    t.integer  "case_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "judges", force: :cascade do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phases", force: :cascade do |t|
    t.integer  "competition_id"
    t.string   "pTitle"
    t.string   "pScore1"
    t.string   "pScore2"
    t.string   "pScore3"
    t.string   "dTitle"
    t.string   "dScore1"
    t.string   "dScore2"
    t.string   "dScore3"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "order"
  end

  create_table "roles", force: :cascade do |t|
    t.integer  "round_id"
    t.integer  "team_member_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "name"
    t.string   "side"
  end

  create_table "rounds", force: :cascade do |t|
    t.string   "number"
    t.integer  "competition_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "p_team_id"
    t.integer  "d_team_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer  "ballot_id"
    t.integer  "phase_id"
    t.integer  "role_id"
    t.decimal  "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_assignments", force: :cascade do |t|
    t.integer  "team_member_id"
    t.integer  "team_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "team_members", force: :cascade do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "institution_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "role"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
