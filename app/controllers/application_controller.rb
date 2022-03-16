class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Overrides Sinatras 404 error. Instead, when someone tries to access a route that does
  # not exist, they receive a message telling them to input a valid route
  error Sinatra::NotFound do
    {message: "404 not found, please input a valid route"}.to_json
  end
end
