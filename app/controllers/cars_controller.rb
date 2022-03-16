class CarsController < Sinatra::Base
    set :default_content_type, 'application/json'

    # Gets all the cars
    get '/cars' do
        get_car_info(Car.all)
    end
    
    # Gets a car based on specified id provided
    get '/cars/:id' do
        get_car_info(Car.find(params[:id]))
    end
    
    # Adds a new car with user provided data
    post '/cars' do
        Car.create(year: params[:year], 
                   make: params[:make], 
                   model: params[:model], 
                   user_id: params[:user_id]
                ).to_json
    end
    
    # Updates a cars "owner" or user in this case
    patch '/cars/:id' do
        Car.find(params[:id]).update(user_id: params[:user_id]).to_json
    end
    
    # Deletes a car from DB
    delete '/cars/:id' do
        Car.find(params[:id]).destroy.to_json
    end
    
    # Adds a new repair to a car based on user input
    post '/cars/:id/repairs' do
        Repair.create(name: params[:name], 
                      price: params[:price], 
                      car_id: params[:id], 
                      miliage: params[:miliage]
                    ).to_json
    end

    private

    # Helps refactor code. Grabs all the info that will be displayed about the car and
    # JSONifies it to be returned to user
    def get_car_info(car)
        car.to_json(
            only: [:id, :year, :make, :model, :total_repair_cost],
            include: {user: {only: [:id, :username]}, 
                      repairs: {only: [:id, :name, :price, :created_at]}}
        )
    end
end