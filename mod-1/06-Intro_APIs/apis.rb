=begin
  # * Live Lecture - Communicating with APIs

  # ! PREVIOUSLY ON:
  - Tons of Object Orientated Ruby
  - Object Relationships

  # ? AND NOW:
  - What is an API
  - What is JSON
  - How the entire internet works
  - HTTP Requests and Responses
  - Modules vs Classes
  - How to communicate with APIs
  - Types of Requests

  # API => Application Programming Interface
  # Endpoints with data

  # The Internet
  Client (your computer) that sends a request to a Server 
  and the response is sent back to the Client,
  the client then presents the data to the user

  # Types of HTTP Requests
  GET       => Read action, we just want the data from the server
  POST      => We have data that we want to add to the server/database(db)
  PUT/PATCH => Edit, we have new data, and want to EDIT a tweet
  DELETE    => Deletes an entry
  # ? Twitter Example
  GET     => Show me all the tweets!
  POST    => Write and Submit and new tweet
  PUT     => Edit a tweet that's already in db
  DELETE  => Removes tweet from db

  # What is JSON
  JavaScript Object Notation
  a giant hash (or object) with key and value pairs that is return to the user

  # * API Tools
  Insomina.rest
  Postman
  cUrl

  # Module vs Class
  A Class can instantiated, and a Module cannot

=end

require 'pry'
require 'json'
# might need require 'net/http'
require 'httparty'

swapi = 'https://swapi.dev/api/'
swapi_endpoints = %W(people planets films vehicles starships)

# ! Net HTTP
# change our url string into a URI object
# then pass the new URI obk into our net http get request
def call_api_net(endpoint)
  uri = URI(endpoint)
  reponse = Net::HTTP.get(uri)
  better_reponse = JSON.parse(reponse)
end

# ! HTTParty
# HTTParty,get(url as a string)
def call_api_party(url)
  reponse = HTTParty.get(url)
end

obi1 = call_api_net(swapi + swapi_endpoints[0] + '/10/')
obi2 = call_api_party(swapi + swapi_endpoints[0] + '/10/')


# make methods that use the data

def display_character(response)
  name = response["name"]
  height = response["height"]
  mass = response["mass"]
  puts "#{name} is #{height}cm tall and #{mass}kg large!"
end

lotr_api = 'https://the-one-api.dev/v2/movie'
lotr_endpoints = %W(book movie character quote)


binding.pry