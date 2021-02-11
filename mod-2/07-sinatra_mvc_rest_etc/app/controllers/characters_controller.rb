class CharactersController < ApplicationController
  cols = Rake.application.terminal_width

  # INDEX
  # Create a route that returns all the characters
  get "/characters" do
    # we need to pass the characters array to the erb-view

    @characters = Character.all
    erb :"characters/index"
  end

  # NEW
  # Display a form to create a new character
  get "/characters/new" do
    erb :"characters/new"
  end

  # SHOW
  # display one character
  get "/characters/:id" do
    # use that id from the params hash to find our character
    @character = Character.find(params[:id])
    erb :"characters/show"
  end

  # CREATE
  post "/characters" do
    character = Character.create(params)
    redirect "/characters/#{character.id}"
  end
  
end
