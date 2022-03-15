class UserController < Sinatra::Base
  set :default_content_type, 'application/json'

  post '/login' do
    user = User.find_by(username: params[:username].downcase)
    
    if(user && user.authenticate(params[:password]))
      {logged_in: true, username: user.username}.to_json
    else
      {logged_in: false}.to_json
    end 
  end
    
  post '/users' do
    if User.find_by(username: params[:username].downcase) == nil && User.find_by(email: params[:email].downcase) == nil
      User.create(username: params[:username].downcase, 
                  password: params[:password], 
                  first_name: params[:first_name], 
                  last_name: params[:last_name], 
                  email: params[:email], 
                  birthday: params[:birthday], 
                  group: params[:group]
              ).to_json
    else
      {message: "That username/email is already taken"}.to_json
    end
  end
    
  get '/users/:id' do
    User.find(params[:id]).to_json(only: [:id, :username, :first_name, :last_name, :email, :birthday, :group])
  end
    
  delete '/users/:id' do
    User.find(params[:id]).destroy.to_json
  end
    
  post '/logout' do
  
  end
    
  get '/logged_in' do
    
  end
end