class ApplicationController < Sinatra::Base
  # create GET route at the root "/"

  get "/" do
    "Hello There"
  end

  get "/books" do
    # Book.all
    "BOOOKS!"
  end

  # Assume that we have a db of Books, and they have ids
  # getting the 12th book

  # Hardcoded
  # get "/books/12" do
  #   # Book.find(12)
  #   "found book 12"
  # end

  # Dynamic Route
  get "/books/:book_id" do
    # Book.find()
    # binding.pry
    "found book #{params[:book_id]}"
  end

  # Ridic Dynamic Route
  get "/books/:book_id/:page_number/:hello/:hi" do
    # binding.pry

  end
end
