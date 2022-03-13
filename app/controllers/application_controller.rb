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
    { message: "YOU ADDED IT" }.to_json
  end

  patch '/cars/:id' do
    { message: "YOU UPDATED IT #{params[:id]}" }.to_json
  end

  delete '/cars/:id' do
    car = Car.find(params[:id])
    car.destroy
    car.to_json
  end

  post '/repairs' do
    Car.all.to_json(include: { owner: {only: :name}, repairs: {only: [:id, :name, :price, :created_at]}})
  end 

  post '/owners' do 

  end

  private

  def get_car_info(car)
    car.to_json(
      only: [:id, :year, :make, :model],
      include: {owner: {}, repairs: {only: [:id, :name, :price, :created_at]}}
    )
  end

end
