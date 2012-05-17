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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120517052241) do

  create_table "comments", :force => true do |t|
    t.string   "commentable_type"
    t.integer  "commentable_id"
    t.integer  "user_id"
    t.text     "comment"
    t.string   "unauthenticated_name"
    t.string   "unauthenticated_email"
    t.string   "unauthenticated_website"
    t.string   "ip_address"
    t.string   "session_hash"
    t.string   "browser_fingerprint"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_type", "commentable_id", "ip_address", "browser_fingerprint"], :name => "comments_index"

  create_table "favorites", :force => true do |t|
    t.string   "favoriteable_type"
    t.integer  "favoriteable_id"
    t.integer  "user_id"
    t.string   "ip_address"
    t.string   "session_hash"
    t.string   "browser_fingerprint"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["favoriteable_type", "favoriteable_id", "ip_address", "browser_fingerprint"], :name => "favorites_index"

  create_table "friendings", :force => true do |t|
    t.integer  "friendor_id"
    t.integer  "friendee_id"
    t.boolean  "confirmed",   :default => false
    t.boolean  "rejected",    :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "friendings", ["friendee_id"], :name => "index_friendings_on_friendee_id"
  add_index "friendings", ["friendor_id"], :name => "index_friendings_on_friendor_id"

  create_table "pieces", :force => true do |t|
    t.string   "title"
    t.string   "blurb"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", :force => true do |t|
    t.string   "rateable_type"
    t.integer  "rateable_id"
    t.integer  "value"
    t.integer  "user_id"
    t.string   "ip_address"
    t.string   "session_hash"
    t.string   "browser_fingerprint"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["rateable_type", "rateable_id", "ip_address", "browser_fingerprint"], :name => "ratings_index"

  create_table "reputation_actions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reputations", :force => true do |t|
    t.integer  "user_id"
    t.integer  "reputation_action_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reputations", ["reputation_action_id"], :name => "index_reputations_on_reputation_action_id"
  add_index "reputations", ["user_id", "reputation_action_id"], :name => "user_reputation"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "reputation"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "votes", :force => true do |t|
    t.string   "voteable_type"
    t.integer  "voteable_id"
    t.integer  "user_id"
    t.integer  "value"
    t.string   "ip_address"
    t.string   "session_hash"
    t.string   "browser_fingerprint"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["voteable_type", "voteable_id", "ip_address", "browser_fingerprint"], :name => "votes_index"

end
