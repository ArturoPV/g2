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

ActiveRecord::Schema.define(version: 2019_03_20_045146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "energy_readings", force: :cascade do |t|
    t.bigint "house_id"
    t.integer "reading"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_energy_readings_on_house_id"
  end

  create_table "houses", force: :cascade do |t|
    t.integer "number"
    t.string "name", default: "noname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "points", default: 0
    t.integer "energy_cache", default: 0
    t.integer "cache_size", default: 0
    t.integer "average", default: 0
  end

  create_table "points_transactions", force: :cascade do |t|
    t.bigint "house_id"
    t.integer "ammount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_points_transactions_on_house_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "email"
    t.bigint "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["house_id"], name: "index_users_on_house_id"
  end

end
