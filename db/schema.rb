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

ActiveRecord::Schema.define(version: 20141013002630) do

  create_table "bookings", force: true do |t|
    t.date     "bdateMade"
    t.integer  "numofpeople"
    t.date     "beventdate"
    t.string   "beventtype"
    t.integer  "bstime"
    t.string   "bcompleted"
    t.boolean  "active_status"
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.integer  "catering_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bookings", ["user_id", "restaurant_id"], name: "index_bookings_on_user_id_and_restaurant_id"

  create_table "categories", force: true do |t|
    t.string   "nametype"
    t.string   "timeopen"
    t.boolean  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caterings", force: true do |t|
    t.string   "name"
    t.string   "picture"
    t.integer  "lowprice"
    t.integer  "highprice"
    t.string   "menu"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moneyinfos", force: true do |t|
    t.string   "enddate"
    t.string   "startdate"
    t.string   "paymenttype"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.integer  "catering_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", force: true do |t|
    t.integer  "category_id"
    t.integer  "restaurant_id"
    t.integer  "catering_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "picture"
    t.string   "address"
    t.integer  "lowprice"
    t.integer  "highprice"
    t.string   "menu"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
  end

  add_index "restaurants", ["category_id"], name: "index_restaurants_on_category_id"

  create_table "users", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.date     "dob"
    t.string   "gender"
    t.string   "email"
    t.string   "number"
    t.integer  "loyaltypoint"
    t.integer  "moneyinfo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "password"
  end

end
