class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/cars' do
    Car.all.to_json(include: { repairs: {only: [:id, :name, :price, :created_at]}})
  end

  get '/cars/:id' do
    Car.find(params[:id]).to_json(include: { repairs: {only: [:id, :name, :price, :created_at]}})
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


end
