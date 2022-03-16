class Owners < ActiveRecord::Migration[6.1]
  # Create owners table
  
  def change
    create_table :owners do |t|
      t.string :name
    end
  end
end
