class Repairs < ActiveRecord::Migration[6.1]
  # Create repairs table
  
  def change
    create_table :repairs do |t|
      t.string :name
      t.float :price
      t.timestamps
      t.integer :car_id
    end
  end
end
