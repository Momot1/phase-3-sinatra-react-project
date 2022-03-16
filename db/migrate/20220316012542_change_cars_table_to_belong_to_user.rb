class ChangeCarsTableToBelongToUser < ActiveRecord::Migration[6.1]
  # Rename owner_id column in cars table to user_id
  
  def change
    rename_column :cars, :owner_id, :user_id
  end
end
