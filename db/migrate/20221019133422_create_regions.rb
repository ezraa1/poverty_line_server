class CreateRegions < ActiveRecord::Migration[7.0]
  def change
    create_table :regions do |t|
      t.string :sub_region
      t.string :sub_region_code
      t.string :country_name
      t.integer :country_code
      t.string :city
      t.string :city_reporting_level

      t.timestamps
    end
  end
end
