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

ActiveRecord::Schema.define(version: 20150129011504) do

  create_table "meetups", force: :cascade do |t|
    t.datetime "scheduled_at"
    t.string   "location"
    t.text     "description"
    t.boolean  "food"
    t.boolean  "beer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meetups_topics", force: :cascade do |t|
    t.integer "meetup_id"
    t.integer "topic_id"
  end

  create_table "topic_speakers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "topic_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topic_votes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "auth_key"
    t.text     "auth_data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
