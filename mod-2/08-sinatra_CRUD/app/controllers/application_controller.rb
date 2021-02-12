class ApplicationController < Sinatra::Base
  set :views, "app/views"

  get "/" do
    erb :welcome
  end
end
