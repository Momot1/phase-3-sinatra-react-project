class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # Add your routes here

  post '/owners' do 
    Owner.create(name: params[:name]).to_json
  end

  delete '/owners/:id' do
    Owner.find(params[:id]).destroy.to_json
  end

end
