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

ActiveRecord::Schema.define(version: 20130808011317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gods", force: true do |t|
    t.string   "name"
    t.string   "mission_statement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guardian_angels", force: true do |t|
    t.string   "name"
    t.string   "top_virtue"
    t.integer  "god_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "person_id"
  end

  add_index "guardian_angels", ["god_id"], name: "index_guardian_angels_on_god_id", using: :btree

  create_table "number_calculators", force: true do |t|
    t.string  "number"
    t.integer "base"
    t.string  "base_ten_number"
  end

  create_table "people", force: true do |t|
    t.string   "name"
    t.string   "purpose"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

end
