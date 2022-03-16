class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # Add your routes here
  error Sinatra::NotFound do
    {message: "404 not found, please input a valid route"}.to_json
  end
end
