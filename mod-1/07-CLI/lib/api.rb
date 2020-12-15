class Api

  URL       = 'https://swapi.dev/api/'
  ENDPOINTS = %W(people planets films species vehicles starship)
  search    = '?search='

  def self.get_endpoint(endpoint)
    # TODO Create class method to send get request to endpoint
    
  end

  def self.search_endpoint(endpoint, search_term)  
    # TODO use search term and endpoint

  end
 
  def self.call_api(url)
    # TODO use HTTParty to call api as a string

  end
    
end


=begin
  # * SWAPI DOCS

  Format => 
  {
    "count":      number of total results,
    "next":       url to next 10 results,
    "previous":   url to previous 10 results,
    results:      array of results (limit 10)
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


