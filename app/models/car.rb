class Car < ActiveRecord::Base
    # Belongs to user, but also has many repairs. When a car is deleted, 
    # the repairs for that car are also deleted from the database
    belongs_to :user
    has_many :repairs, :dependent => :destroy

    # This updates the total repair cost of the car
    def self.update_total
        Car.all.each do |car|
            car.total_repair_cost = car.repairs.sum(:price)
            car.save
        end
    end
end