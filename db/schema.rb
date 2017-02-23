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

ActiveRecord::Schema.define(version: 20170223132246) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "location"
    t.string   "postcode"
    t.integer  "owner_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "tasker_id"
    t.integer  "applicant_id"
    t.integer  "status",       default: 0
    t.datetime "datetime"
    t.string   "day"
    t.string   "image"
  end

  create_table "requests", force: :cascade do |t|
    t.text     "message"
    t.integer  "job_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "status"
    t.index ["job_id"], name: "index_requests_on_job_id", using: :btree
    t.index ["user_id"], name: "index_requests_on_user_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "message"
    t.integer  "user_id"
    t.integer  "job_id"
    t.float    "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_reviews_on_job_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "mobile"
    t.string   "postcode"
    t.string   "image"
    t.string   "address"
    t.date     "dob"
    t.float    "rating"
  end

  add_foreign_key "requests", "jobs"
  add_foreign_key "requests", "users"
  add_foreign_key "reviews", "jobs"
  add_foreign_key "reviews", "users"
end
