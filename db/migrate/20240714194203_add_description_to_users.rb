class AddDescriptionToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :bio, :string
    add_column :users, :user_name, :string
  end
end
