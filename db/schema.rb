# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.


ActiveRecord::Schema[7.0].define(version: 2022_10_19_133422) do
  create_table "regions", force: :cascade do |t|
    t.string "sub_region"
    t.string "sub_region_code"
    t.string "country_name"
    t.integer "country_code"
    t.string "city"
    t.string "city_reporting_level"

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "gender"
    t.integer "age"
    t.string "city"
    t.string "country_name"
    t.integer "region_id"
    t.string "marital_status"
    t.string "employment_status"
    t.integer "monthly_income"
    t.string "access_to_safe_water"
    t.string "access_to_electricity"
    t.string "medical_insurance"
    t.string "education_level"
    t.integer "user_type"
    t.string "religion"
    t.boolean "is_disabled"
    t.string "password_digest"

    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
