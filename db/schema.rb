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

ActiveRecord::Schema.define(version: 2018_05_22_190514) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "friend_requests", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_friend_requests_on_user_id"
  end

  create_table "friendships", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "friend_id"
    t.index ["friend_id"], name: "index_friendships_on_friend_id"
    t.index ["user_id"], name: "index_friendships_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "facebook"
    t.string "twitter"
    t.integer "phone_country"
    t.integer "phone_number"
    t.string "whatsapp"
    t.string "email"
    t.string "tumblr"
    t.string "soundcloud"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "nickname"
    t.string "linked_in"
    t.string "password_digest"
  end

  add_foreign_key "friend_requests", "users"
  add_foreign_key "friendships", "users"
end
