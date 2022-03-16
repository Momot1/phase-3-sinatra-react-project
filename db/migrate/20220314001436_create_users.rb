class CreateUsers < ActiveRecord::Migration[6.1]
  # Create users table 
  
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.timestamps
    end
  end
end
