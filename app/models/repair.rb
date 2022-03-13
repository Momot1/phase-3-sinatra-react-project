class Repair < ActiveRecord::Base
    belongs_to :car

    def self.create props
        super(props)

        Car.update_total
    end
end