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

ActiveRecord::Schema.define(version: 20161009013534) do

  create_table "seniorities", force: :cascade do |t|
    t.string   "employment_status"
    t.integer  "bid_number"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "seniority"
    t.integer  "shift"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "employee_number"
    t.datetime "bid_time"
    t.string   "qualification"
  end

  create_table "shifts", force: :cascade do |t|
    t.string   "main_location"
    t.string   "detail_location"
    t.integer  "shift_number"
    t.string   "employment_status"
    t.string   "last_name"
    t.string   "first_name"
    t.integer  "employee_number"
    t.string   "days_off"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.time     "sun_start_time"
    t.time     "sun_quit_time"
    t.string   "sun_location"
    t.time     "mon_start_time"
    t.time     "mon_quit_time"
    t.string   "mon_location"
    t.time     "tue_start_time"
    t.time     "tue_quit_time"
    t.string   "tue_location"
    t.time     "wed_start_time"
    t.time     "wed_quit_time"
    t.string   "wed_location"
    t.time     "thu_start_time"
    t.time     "thu_quit_time"
    t.string   "thu_location"
    t.time     "fri_start_time"
    t.time     "fri_quit_time"
    t.string   "fri_location"
    t.time     "sat_start_time"
    t.time     "sat_quit_time"
    t.string   "sat_location"
    t.boolean  "watched"
    t.integer  "total_hours"
    t.integer  "day_hours"
  end

  create_table "sundays", force: :cascade do |t|
    t.time     "start_time"
    t.time     "quit_time"
    t.string   "location"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "shift_number"
    t.integer  "shift_id"
  end

end
