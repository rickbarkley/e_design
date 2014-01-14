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

ActiveRecord::Schema.define(:version => 20140114033011) do

  create_table "orders", :force => true do |t|
    t.integer  "user_id"
    t.string   "plan_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "plans", :force => true do |t|
    t.integer  "bedrooms"
    t.integer  "sqfoot"
    t.integer  "levels"
    t.integer  "bathrooms"
    t.decimal  "price"
    t.string   "name"
    t.integer  "half_bath"
    t.integer  "living"
    t.string   "suite"
    t.string   "stories"
    t.integer  "dining"
    t.string   "view"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "drawing_1_file_name"
    t.string   "drawing_1_content_type"
    t.integer  "drawing_1_file_size"
    t.datetime "drawing_1_updated_at"
    t.string   "drawing_2_file_name"
    t.string   "drawing_2_content_type"
    t.integer  "drawing_2_file_size"
    t.datetime "drawing_2_updated_at"
    t.string   "elevation_file_name"
    t.string   "elevation_content_type"
    t.integer  "elevation_file_size"
    t.datetime "elevation_updated_at"
    t.integer  "garage"
    t.string   "width"
    t.string   "depth"
    t.decimal  "plan_cost"
    t.string   "casita2"
    t.string   "study2"
    t.string   "court2"
    t.string   "style"
    t.string   "garage_loc"
    t.string   "media2"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
