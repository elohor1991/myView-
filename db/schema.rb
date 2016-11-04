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

ActiveRecord::Schema.define(version: 20161104105014) do

  create_table "categors", force: :cascade do |t|
    t.string   "categoryname"
    t.text     "others"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorys", force: :cascade do |t|
    t.string "categoryname"
    t.text   "others"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: :cascade do |t|
    t.text "message"
  end

  create_table "logins", force: :cascade do |t|
    t.string "username"
    t.string "password"
  end

  create_table "martists", force: :cascade do |t|
    t.string   "displayname"
    t.text     "profilemessage"
    t.text     "citylocated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
  end

end
