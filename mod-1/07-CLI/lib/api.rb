class Api

  URL       = 'https://swapi.dev/api/'
  ENDPOINTS = %W(people planets films species vehicles starship)

  def self.get_endpoint(endpoint)
    self.call_api("#{URL}#{endpoint}")
  end

  def self.search_endpoint(endpoint, search_term)  
    self.call_api("#{URL}#{endpoint}/?search=#{search_term}")["results"]
  end


  
  # private
  def self.call_api(url)
    HTTParty.get(url)
  end
    
end


=begin
  # * SWAPI

  /people/:id
  /people/schema

  # ! SEARCHING
  /people/?search=term

  # ! OTHER
  /planets/1/?format=wookiee

=end








=begin

# API_KEY   = Dotenv.load["LOTR_API_KEY"]
# URL       = 'https://the-one-api.dev/v2/'
# ENDPOINTS = %W(movie book character quote)

def self.find_by_character_name(name)
  # /character?name=Gandalf
  search_endpt = "#{URL}character?name=#{name}"
  self.call_api_party(search_endpt)
end

def self.find_by_character_race(races, toInclude=true)
  # /character?race=Hobbit,Human
  search_endpt = toInclude ? ["#{URL}character?race="] : ["#{URL}character?race!="]
  races.each do |race|
    search_endpt << race
  end
  self.call_api_party(search_endpt.join(","))
end

reponse = HTTParty.get(url,
  headers: {
    "Authorization" => "Bearer #{API_KEY}"
  }
)
# * FROM THE LOTR API DOCS

# ! Endpoints
/book                 List of all "The Lord of the Rings" books
/book/{id}            Request one specific book
/book/{id}/chapter    Request all chapters of one specific book
/movie                List of all movies, including the "The Lord of the Rings" and the "The Hobbit" trilogies
/movie/{id}           Request one specific movie
/movie/{id}/quote     Request all movie quotes for one specific movie (only working for the LotR trilogy)
/character            List of characters including metadata like name, gender, realm, race and more
/character/{id}       Request one specific character
/character/{id}/quote Request all movie quotes of one specific character
/quote                List of all movie quotes
/quote/{id}           Request one specific movie quote

# !PAGINATION
limit                 /characters?limit=100
page                  /character?page=2 (limit default is 10)
offset                /character?offset=3 (limit default is 10)

# ! SORTING
/character?sort=name:asc
/quote?sort=character:desc

# ! FILTERING
match, negate match   
/character?name=Gandalf   ||  /character?name!=Frodo

include, exclude      
/character?race=Hobbit,Human || /character?race!=Orc,Goblin

exists, doesn't exists
/character?name || /character?!name

less than, greater than or equal to
/movie?budgetInMillions<100
/movie?academyAwardWins>0
/movie?runtimeInMinutes>=160

=end