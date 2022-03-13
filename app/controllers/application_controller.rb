class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/test' do
    { message: "YOU GOT IT!" }.to_json
  end

  post '/test' do
    { message: "YOU ADDED IT" }.to_json
  end

  patch '/test/:id' do
    { message: "YOU UPDATED IT #{params[:id]}" }.to_json
  end

  delete '/test/:id' do
    { message: "YOU DELETED IT #{params[:id]}"}.to_json
  end


end
