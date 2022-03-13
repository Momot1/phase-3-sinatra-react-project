class Car < ActiveRecord::Base
    belongs_to :owner
    has_many :repairs, :dependent => :destroy

    def self.update_total
        Car.all.each do |car|
            car.total_repair_cost = car.repairs.sum(:price)
            car.save
        end
    end
end