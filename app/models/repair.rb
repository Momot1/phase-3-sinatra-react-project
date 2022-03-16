class Repair < ActiveRecord::Base
    # A repair belongs to a car
    belongs_to :car

    # When a new repair is created, this automatically updates the car's total price
    # to include the cost of the newly created repair
    def self.create props
        super(props)

        Car.update_total
    end
end