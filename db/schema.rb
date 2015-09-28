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

ActiveRecord::Schema.define(version: 20150927131830) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.boolean  "active",     default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.integer  "subcategory_id"
    t.integer  "user_id"
    t.integer  "category_id"
    t.string   "image"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "private_room"
    t.string   "private_bathroom"
    t.string   "parking"
    t.string   "laundry"
    t.integer  "rent"
    t.string   "housing_type"
    t.integer  "area"
    t.date     "available"
    t.datetime "openhouse1"
    t.datetime "openhouse2"
    t.datetime "openhouse3"
    t.boolean  "cats"
    t.boolean  "dogs"
    t.boolean  "furnished"
    t.boolean  "no_smoking"
    t.boolean  "wheelchair"
  end

  create_table "subcategories", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "surname"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "admin",           default: false
    t.text     "password_digest"
  end

  create_table "wishes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.string   "name"
    t.integer  "item_id"
    t.boolean  "present",        default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
