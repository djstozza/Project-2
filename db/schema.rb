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


ActiveRecord::Schema.define(version: 20150929040215) do


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
    t.integer  "price"
    t.integer  "subcategory_id"
    t.integer  "user_id"
    t.integer  "category_id"
    t.string   "image"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "private_room"
    t.string   "private_bathroom"
    t.integer  "rooms"
    t.integer  "bathrooms"
    t.string   "parking"
    t.string   "laundry"
    t.integer  "rent"
    t.integer  "sale_price"
    t.string   "housing_type"
    t.integer  "area"
    t.date     "available"
    t.datetime "openhouse1"
    t.datetime "openhouse2"
    t.datetime "openhouse3"
    t.boolean  "pets"
    t.boolean  "furnished"
    t.boolean  "smoking"
    t.boolean  "wheelchair"
<<<<<<< HEAD
    t.integer  "sale_id"
  end

  create_table "sales", force: :cascade do |t|
    t.string   "buyer_email"
    t.string   "seller_email"
    t.string   "guid"
    t.integer  "book_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
=======
    t.string   "employment_type"
    t.string   "salary"
    t.boolean  "recruiter"
    t.boolean  "internship"
    t.boolean  "non_profit"
    t.boolean  "telecommuting"
    t.boolean  "disability"
    t.string   "make"
    t.string   "condition"
    t.string   "model"
    t.string   "dimensions"
    t.string   "serial_number"
    t.integer  "engine_hours"
    t.integer  "length_overall"
    t.string   "propulsion_type"
    t.date     "model_year"
    t.string   "vin"
    t.string   "cylinders"
    t.string   "drive"
    t.string   "fuel"
    t.string   "engine_displacement"
    t.string   "paint_colour"
    t.string   "size"
    t.string   "title_status"
    t.string   "transmission"
    t.string   "car_type"
    t.string   "media_type"
    t.string   "mobile_os"
    t.date     "garage_sale1"
    t.date     "garage_sale2"
    t.date     "garage_sale3"
    t.time     "start_time"
    t.integer  "odometer"
    t.datetime "event"
    t.integer  "tickets"
    t.string   "venue"
>>>>>>> dbb1df2f0cbf7b6fedd3614e292014c606871a3e
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
