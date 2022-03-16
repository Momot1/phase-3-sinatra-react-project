class CarsController < Sinatra::Base
    set :default_content_type, 'application/json'

    get '/cars' do
        get_car_info(Car.all)
    end
    
    get '/cars/:id' do
        get_car_info(Car.find(params[:id]))
    end
    
    post '/cars' do
        Car.create(year: params[:year], 
                   make: params[:make], 
                   model: params[:model], 
                   user_id: params[:user_id]
                ).to_json
    end
    
    patch '/cars/:id' do
        Car.find(params[:id]).update(user_id: params[:user_id]).to_json
    end
    
    delete '/cars/:id' do
        Car.find(params[:id]).destroy.to_json
    end
    
    post '/cars/:id/repairs' do
        Repair.create(name: params[:name], 
                      price: params[:price], 
                      car_id: params[:id], 
                      miliage: params[:miliage]
                    ).to_json
    end

    private

    def get_car_info(car)
        car.to_json(
            only: [:id, :year, :make, :model, :total_repair_cost],
            include: {user: {only: [:id, :username]}, 
                      repairs: {only: [:id, :name, :price, :created_at]}}
        )
    end
end