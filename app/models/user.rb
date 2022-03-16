class User < ActiveRecord::Base
    # Uses bcrypt gem to tell the database that this table has passwords stored
    has_secure_password

    # User has many cars, when a user is deleted, all of their cars are deleted from DB
    has_many :cars, :dependent => :destroy
end