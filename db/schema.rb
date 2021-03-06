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

ActiveRecord::Schema.define(version: 20170924144341) do

  create_table "employers", force: :cascade do |t|
    t.string   "name"
    t.string   "industry"
    t.boolean  "certified"
    t.string   "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recruiters", force: :cascade do |t|
    t.string   "name"
    t.boolean  "certified"
    t.string   "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reqs", force: :cascade do |t|
    t.integer  "employer_id"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["employer_id"], name: "index_reqs_on_employer_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "reviewer"
    t.string   "reviewee"
    t.string   "text"
    t.string   "reviewable_type"
    t.integer  "reviewable_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["reviewable_type", "reviewable_id"], name: "index_reviews_on_reviewable_type_and_reviewable_id"
  end

end
