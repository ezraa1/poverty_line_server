class RemoveDetailFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :social_background, :string
  end
end
