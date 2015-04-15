
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

<<<<<<< HEAD








  create_table "events", force: true do |t|
    t.date     "date"
    t.string   "time"
    t.string   "place"
    t.text     "description"
      t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    
  create_table "followings", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "intrests", force: true do |t|
    t.string   "intrest_name"





  create_table "pages", force: true do |t|
    t.text     "providername"
    t.text     "providerinfo"
    t.text     "contactus"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "picture"
  end



  create_table "questions", force: true do |t|
    t.text     "body"
    t.integer  "event_id"
    
  create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true

  create_table "sports", force: true do |t|
    t.integer  "follower_id"

 


  add_index "questions", ["event_id"], name: "index_questions_on_event_id"

  

  

  

  create_table "user_intrests", force: true do |t|
    t.integer  "inrest_id"

  create_table "user_events", force: true do |t|

    t.integer  "user_id"
    t.string   "event_id"
    t.string   "integer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
=======
ActiveRecord::Schema.define(version: 20150310190245) do
>>>>>>> f12660a4fafb17e3ccd948c15bcf83f9def39f33

  create_table "creatingevents", force: true do |t|
    t.date     "date"
    t.string   "time"
    t.text     "place"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

<<<<<<< HEAD
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
end
=======
>>>>>>> f12660a4fafb17e3ccd948c15bcf83f9def39f33
end
