class WeaponsController < ApplicationController

  # GET: /weapons
  get "/weapons" do
    erb :"/weapons/index.html"
  end

  # GET: /weapons/new
  get "/weapons/new" do
    erb :"/weapons/new.html"
  end

  # POST: /weapons
  post "/weapons" do
    redirect "/weapons"
  end

  # GET: /weapons/5
  get "/weapons/:id" do
    erb :"/weapons/show.html"
  end

  # GET: /weapons/5/edit
  get "/weapons/:id/edit" do
    erb :"/weapons/edit.html"
  end

  # PATCH: /weapons/5
  patch "/weapons/:id" do
    redirect "/weapons/:id"
  end

  # DELETE: /weapons/5/delete
  delete "/weapons/:id/delete" do
    redirect "/weapons"
  end
end
