class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.integer :user_id
      t.string :donation_name
      t.string :description
      t.integer :donation_amount
      t.integer :region_id
      t.integer :country_code

      t.timestamps
    end
  end
end
