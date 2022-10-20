class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.string :gender
      t.integer :age
      t.string :city
      t.string :country_name
      t.integer :region_id
      t.string :marital_status
      t.string :employment_status
      t.string :social_background
      t.integer :monthly_income
      t.string :access_to_safe_water
      t.string :access_to_electricity
      t.string :medical_insurance
      t.string :education_level
      # t.string :religion
      # t.boolean :is_disabled

      t.timestamps
    end
  end
end
