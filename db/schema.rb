# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_12_155712) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "twitter"
    t.string "website"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.string "interview"
    t.string "interview_comment"
    t.string "tech"
    t.string "tech_interview"
    t.string "language"
    t.integer "compensation"
    t.string "benefits"
    t.string "diversity"
    t.string "mentorship"
    t.string "culture"
    t.string "culture_comment"
    t.integer "overall"
    t.string "first_name"
    t.string "last_name"
    t.string "bootcamp"
    t.string "city"
    t.string "state"
    t.integer "company_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
