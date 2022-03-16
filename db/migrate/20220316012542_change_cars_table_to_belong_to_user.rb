class ChangeCarsTableToBelongToUser < ActiveRecord::Migration[6.1]
  def change
    rename_column :cars, :owner_id, :user_id
  end
end
