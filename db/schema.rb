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

ActiveRecord::Schema.define(version: 20161113203402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "likes", force: :cascade do |t|
    t.integer  "mentor_id"
    t.integer  "mente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mente_id"], name: "index_likes_on_mente_id", using: :btree
    t.index ["mentor_id"], name: "index_likes_on_mentor_id", using: :btree
  end

  create_table "mentes", force: :cascade do |t|
    t.string   "image"
    t.string   "email"
    t.string   "name"
    t.date     "age"
    t.string   "mentor_type"
    t.text     "description"
    t.string   "question"
    t.string   "interests"
    t.string   "location"
    t.string   "langitude"
    t.string   "latitude"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.float    "longitude"
  end

  create_table "mentors", force: :cascade do |t|
    t.string   "image"
    t.string   "email"
    t.string   "name"
    t.date     "age"
    t.string   "mentor_type"
    t.text     "description"
    t.string   "question"
    t.string   "interests"
    t.string   "location"
    t.string   "langitude"
    t.string   "latitude"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.float    "longitute"
    t.float    "longitude"
    t.string   "password_digest"
  end

  add_foreign_key "likes", "mentes"
  add_foreign_key "likes", "mentors"
end
