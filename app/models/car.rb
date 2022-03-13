class Car < ActiveRecord::Base
    belongs_to :owner
    has_many :repairs
end