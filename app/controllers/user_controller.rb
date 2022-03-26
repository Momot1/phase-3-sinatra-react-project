class UserController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Whenever a person tries to login, it checks the username and password provided by the input
  post '/login' do
    user = User.find_by(username: params[:username].downcase)
     
    if(user && user.authenticate(params[:password]))
      {logged_in: true, username: user.username, id: user.id}.to_json
    else
      {logged_in: false}.to_json
    end
  end
    
  # If a user creates an account, it checks to see if the username/email is avaliable.
  # If it is not, then it returns a message saying the username or email is taken.
  # If it is avaliable, it creates the account with the user inputted data
  post '/users' do
    if User.find_by(username: params[:username].downcase) == nil && User.find_by(email: params[:email].downcase) == nil
      User.create(username: params[:username].downcase, 
                  password: params[:password], 
                  first_name: params[:firstName], 
                  last_name: params[:lastName], 
                  email: params[:email], 
                  birthday: params[:birthday], 
                  group: params[:group]
              ).to_json
    else
      {message: "That username/email is already taken"}.to_json
    end
  end
    
  # Finds a user based on their id, and provides information about that user
  get '/users/:id' do
    User.find(params[:id]).to_json(only: [:id, :username, :first_name, :last_name, :email, :birthday, :group])
  end
    
  # Deletes a user from the database
  delete '/users/:id' do
    User.find(params[:id]).destroy.to_json
  end
end