class CharactersController < ApplicationController
  configure do
    set :method_override, true
  end

  # INDEX
  # Create a route that returns all the characters
  get "/characters" do
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
    find_character
    erb :"characters/show"
  end

  # EDIT
  get "/characters/:id/edit" do
    find_character
    erb :"characters/edit"
  end

  # ACTIONABLE ROUTES
  # CREATE
  post "/characters" do
    character = Character.create(params)
    redirect "/characters/#{character.id}"
  end

  # post "/characters/:id"....
  # PATCH/PUT
  patch "/characters/:id" do
    params.delete("_method")
    find_character
    @character.update(params)

    redirect "/characters/#{@character.id}"
  end

  # DELETE
  delete "/characters/:id" do
    find_character
    @character.destroy

    redirect "/characters"
  end

  private

  def find_character
    @character = Character.find(params[:id])
  end
end
