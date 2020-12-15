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


