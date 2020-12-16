class Api
  # Creates classmethods to interact with your api

  URL             = 'https://swapi.dev/api/'
  ENDPOINTS       = %W(people planets films species vehicles starship)
  # search_query    = '/?search='

  # def self.get_films
  #   self.call_api(URL + 'films')
  # end

  # def self.get_people
  #   self.call_api(URL + 'people')
  # end

  def self.get_endpoint(endpoint, sort=false)
    # TODO Create class method to send get request to endpoint
    # endpoint => 'people'
    # create a url that has the endpoint
    new_url = URL + endpoint
    self.call_api(new_url)

  end

  def self.search_endpoint(endpoint, search_term)  
    # TODO use search term and endpoint
    search_url = URL + endpoint + '/?search=' + search_term
    self.call_api(search_url)
  end
 
  def self.call_api(url)
    # TODO use HTTParty to call api as a string
    HTTParty.get(url)
  end

  def self.call_api_net(url)
    uri = URI(url)
    response = Net::HTTP.get(uri)
    better_response = JSON.parse(response)
  end
    
end


=begin
  # * SWAPI DOCS

  Format => 
  {
    "count":      number of total results,
    "next":       url to next 10 results,
    "previous":   url to previous 10 results,
    "results":    array of results (limit 10)
  }
  
  /films
  /people
  /people/:id
  /people/schema

  # ! SEARCHING
  /people/?search=term

  # ! OTHER
  /planets/1/?format=wookiee

=end


