class Cars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.integer :owner_id
    end
  end
end
