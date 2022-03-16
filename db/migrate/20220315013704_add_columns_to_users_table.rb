class AddColumnsToUsersTable < ActiveRecord::Migration[6.1]
  # Add information columns to users table
  
  def change
    add_column :users, :email, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthday, :string
    add_column :users, :group, :string
  end
end
