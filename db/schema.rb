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

ActiveRecord::Schema.define(version: 20160412101315) do

  create_table "circuls", force: :cascade do |t|
    t.string   "name"
    t.integer  "father_circul_id", default: 0
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "note"
    t.integer  "days"
    t.integer  "nights"
    t.string   "place"
    t.integer  "status",     default: 0
    t.string   "color"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "events_circuls", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "circul_id"
    t.integer  "status",     default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
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

end
