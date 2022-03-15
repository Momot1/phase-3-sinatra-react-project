class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/cars' do
    get_car_info(Car.all)
  end

  get '/cars/:id' do
    get_car_info(Car.find(params[:id]))
  end

  post '/cars' do
    Car.create(year: params[:year], make: params[:make], model: params[:model], owner_id: params[:owner_id]).to_json
  end

  patch '/cars/:id' do
    Car.find(params[:id]).update(owner_id: params[:owner_id]).to_json
  end

  delete '/cars/:id' do
    Car.find(params[:id]).destroy.to_json
  end

  post '/cars/:id/repairs' do
    Repair.create(name: params[:name], price: params[:price], car_id: params[:id], miliage: params[:miliage]).to_json
  end

  post '/owners' do 
    Owner.create(name: params[:name]).to_json
  end

  delete '/owners/:id' do
    Owner.find(params[:id]).destroy.to_json
  end

  post '/login' do
    user = User.find_by(username: params[:username].downcase)

    if(user && user.authenticate(params[:password]))
      {logged_in: true, username: user.username}.to_json
    else
      {logged_in: false}.to_json
    end 
  end

  post '/users' do
    if User.find_by(username: params[:username].downcase) == nil
      User.create(username: params[:username].downcase, password: params[:password]).to_json
    else
      {message: "That username is already taken"}.to_json
    end
  end

  post '/logout' do

  end

  get '/logged_in' do

  end

  private

  def get_car_info(car)
    car.to_json(
      only: [:id, :year, :make, :model, :total_repair_cost],
      include: {owner: {}, repairs: {only: [:id, :name, :price, :created_at]}}
    )
  end

end
