class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :user_type, :integer
    add_column :users, :religion, :string
    add_column :users, :is_disabled, :boolean
  end
end
