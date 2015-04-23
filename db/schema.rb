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

ActiveRecord::Schema.define(version: 20150215031113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenge_user_registrations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "challenge_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "challenge_user_registrations", ["challenge_id"], name: "index_challenge_user_registrations_on_challenge_id", using: :btree
  add_index "challenge_user_registrations", ["user_id"], name: "index_challenge_user_registrations_on_user_id", using: :btree

  create_table "challenges", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entries", force: :cascade do |t|
    t.integer  "healthy_thing_id"
    t.date     "date"
    t.integer  "value"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "healthy_things", force: :cascade do |t|
    t.string   "name"
    t.integer  "value"
    t.integer  "daily_limit"
    t.integer  "challenge_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "profile_image_url"
    t.boolean  "admin",             default: false
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "challenge_user_registrations", "challenges"
  add_foreign_key "challenge_user_registrations", "users"
end
