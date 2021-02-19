class UsersController < ApplicationController
  # displays a signup form
  get "/signup" do
    erb :"users/signup"
  end

  post "/signup" do
    user = User.new(params)
    # manually check if email already exists
    # check if both aren't empty
    # hasOne = params["password"].include?("1")
    # pw can't contain a "1"
    if !!user.email || !!user.password || !User.find_by(email: params["email"])
      # success!
      user.save
      session["user_id"] = user.id
      puts "*" * 99
      puts session
      redirect "/characters"
    else
      # failure!
      flash["message"] = "Can't have Number 1"
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
      puts session["user_id"]
      puts "*" * 99
      redirect "/characters"
    else
      # Failed login
      cols = Rake.application.terminal_width
      puts "*" * cols
      puts flash
      puts "*" * cols
      flash["message"] = "Wrong Login Info"
      redirect "/login"
    end
  end
  # get, post, or delete
  post "/logout" do
    session.clear
    puts "*" * 99
    puts session["user_id"]
    puts "*" * 99
    redirect "/login"
  end
end
