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

ActiveRecord::Schema.define(version: 20150415231150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string   "subject"
    t.string   "course_number"
    t.string   "title"
    t.string   "level"
    t.integer  "hours"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "instructor_courses", force: :cascade do |t|
    t.integer "instructor_id", null: false
    t.integer "course_id",     null: false
  end

  add_index "instructor_courses", ["instructor_id", "course_id"], name: "index_instructor_courses_on_instructor_id_and_course_id", using: :btree

  create_table "instructor_ratings", force: :cascade do |t|
    t.integer  "course_id"
    t.decimal  "avg_grade"
    t.decimal  "a_percent"
    t.decimal  "b_percent"
    t.decimal  "c_percent"
    t.decimal  "d_percent"
    t.decimal  "f_percent"
    t.decimal  "workload_scale"
    t.integer  "year"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "instructor_id"
    t.string   "term"
  end

  add_index "instructor_ratings", ["instructor_id"], name: "index_instructor_ratings_on_instructor_id", using: :btree

  create_table "instructors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
