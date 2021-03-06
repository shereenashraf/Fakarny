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

ActiveRecord::Schema.define(version: 20150501164732) do

  create_table "answers", force: true do |t|
    t.string   "answerer"
    t.text     "body"
    t.integer  "askprovider_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "answers", ["askprovider_id"], name: "index_answers_on_askprovider_id"

  create_table "arts", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ask_p_rovider_notifications", force: true do |t|
    t.boolean  "checked"
    t.integer  "user_id"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ask_p_rovider_notifications", ["page_id"], name: "index_ask_p_rovider_notifications_on_page_id"
  add_index "ask_p_rovider_notifications", ["user_id"], name: "index_ask_p_rovider_notifications_on_user_id"

  create_table "askproviders", force: true do |t|
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "creatingevents", force: true do |t|
    t.date     "date"
    t.string   "time"
    t.text     "place"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events", force: true do |t|
    t.string   "date"
    t.string   "time"
    t.string   "place"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "follow_providers", force: true do |t|
    t.integer  "page_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "followings", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "intrests", force: true do |t|
    t.string   "intrest_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matfakarnies", force: true do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musics", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.text     "providername"
    t.text     "providerinfo"
    t.text     "contactus"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "picture"
  end

  create_table "profiles", force: true do |t|
    t.string   "name"
    t.string   "age"
    t.string   "city"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "questions", force: true do |t|
    t.text     "body"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "questions", ["event_id"], name: "index_questions_on_event_id"

  create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id"

  create_table "specific_intrests", force: true do |t|
    t.string   "specific_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specifics", force: true do |t|
    t.string   "specific_name"
    t.integer  "intrests_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "intrest_id"
  end

  add_index "specifics", ["intrests_id"], name: "index_specifics_on_intrests_id"

  create_table "sports", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subs", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_friendships", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_intrests", force: true do |t|
    t.integer  "inrest_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_specific_intrests", force: true do |t|
    t.integer  "intrest_id"
    t.integer  "user_id"
    t.integer  "specific_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "isadmin",                default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "views", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "views", ["email"], name: "index_views_on_email", unique: true
  add_index "views", ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true

  create_table "votes", force: true do |t|
    t.integer  "matfakarny_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "xes", force: true do |t|
    t.integer  "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
