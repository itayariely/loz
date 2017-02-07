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

ActiveRecord::Schema.define(version: 20170206083122) do

  create_table "calendars", force: :cascade do |t|
    t.string   "name"
    t.string   "color"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "calendar_type"
  end

  create_table "circul_week_relations", force: :cascade do |t|
    t.integer  "circul_id"
    t.integer  "week_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "circuls", force: :cascade do |t|
    t.string   "name"
    t.integer  "father_circul_id", default: 0
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "color"
  end

  create_table "conflicts", force: :cascade do |t|
    t.integer  "first_event_id"
    t.integer  "second_event_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.date     "start_at"
    t.date     "end_at"
    t.text     "note"
    t.integer  "days"
    t.integer  "nights"
    t.string   "place"
    t.integer  "status",      default: 0
    t.string   "color"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.boolean  "all_day"
    t.text     "description"
    t.integer  "time"
    t.integer  "mosa"
    t.integer  "calendar_id"
    t.integer  "parent_id"
  end

  create_table "events_circuls", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "circul_id"
    t.integer  "status",     default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "events_circuls", ["event_id", "circul_id"], name: "index_events_circuls_on_event_id_and_circul_id"

  create_table "events_friends", force: :cascade do |t|
    t.integer  "friend_id"
    t.integer  "event_id"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friend_week_relations", force: :cascade do |t|
    t.integer  "friend_id"
    t.integer  "week_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friends", force: :cascade do |t|
    t.string   "name"
    t.string   "lname"
    t.string   "phone"
    t.string   "email"
    t.date     "birth_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friends_circuls", force: :cascade do |t|
    t.integer  "friend_id"
    t.integer  "circul_id"
    t.integer  "status",     default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "friends_circuls", ["friend_id", "circul_id"], name: "index_friends_circuls_on_friend_id_and_circul_id"

  create_table "week_days", force: :cascade do |t|
    t.integer  "week_id"
    t.string   "name"
    t.integer  "wonted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weeks", force: :cascade do |t|
    t.string   "name"
    t.integer  "frequency"
    t.integer  "houers"
    t.integer  "tomezon"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "day_a",      default: 0
    t.integer  "day_b",      default: 0
    t.integer  "day_c",      default: 0
    t.integer  "day_d",      default: 0
    t.integer  "day_e",      default: 0
    t.integer  "day_f",      default: 0
    t.integer  "day_s",      default: 0
    t.text     "notes"
  end

end
