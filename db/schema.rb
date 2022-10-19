ActiveRecord::Schema[7.0].define(version: 2022_10_20_062504) do
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

  create_table "donations", force: :cascade do |t|
    t.integer "user_id"
    t.string "donation_name"
    t.string "description"
    t.integer "donation_amount"
    t.integer "region_id"
    t.integer "country_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end



end