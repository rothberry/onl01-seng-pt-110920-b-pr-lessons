class UsersController < ApplicationController
  # displays a signup form
  get "/signup" do
    erb :"users/signup"
  end

  post "/signup" do
    user = User.new(params)
    # manually check if email already exists
    # check if both aren't empty
    if !!user.email || !!user.password || !User.find_by(email: params["email"])
      # success!
      user.save
      session["user_id"] = user.id
      puts "*" * 99
      puts session
      redirect "/characters"
    else
      # failure!
      redirect "/signup"
    end
  end

  get "/login" do
    erb :"users/login"
  end

  post "/login" do
    user = User.find_by(email: params["email"])
    if user.authenticate(params["password"])
      # Successful login
      session["user_id"] = user.id
      puts "*" * 99
      puts session
      redirect "/characters"
    else
      # Failed login
      redirect "/login"
    end
  end
  # get, post, or delete
  delete "/logout" do
  end
end
