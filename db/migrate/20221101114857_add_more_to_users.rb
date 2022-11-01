class AddMoreToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :skills, :string
    add_column :users, :telephone_number, :integer
  end
end
