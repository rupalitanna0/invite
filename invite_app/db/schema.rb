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

ActiveRecord::Schema.define(version: 20150821163628) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "nameevent"
    t.string   "picsevent"
    t.string   "details"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events_guests", id: false, force: :cascade do |t|
    t.integer "event_id",                 null: false
    t.integer "guest_id",                 null: false
    t.boolean "accepted", default: false
  end

  create_table "guests", force: :cascade do |t|
    t.string   "name"
    t.string   "middlename"
    t.string   "lastname"
    t.integer  "age",        default: 0
    t.string   "addresss"
    t.string   "state"
    t.string   "gender"
    t.integer  "cellno",     default: 0
    t.string   "email"
    t.integer  "zipcode",    default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "photogalleries", force: :cascade do |t|
    t.integer  "event_id"
    t.string   "topic"
    t.string   "pics"
    t.string   "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rsvps", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.boolean  "coming",     default: false
    t.string   "name"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "address"
    t.string   "state"
    t.string   "zipcode"
    t.integer  "cellno",     default: 0
    t.string   "email"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.integer  "age",             default: 0
    t.string   "password_digest"
    t.string   "addresss"
    t.string   "state"
    t.string   "gender"
    t.integer  "cellno",          default: 0
    t.string   "email"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
