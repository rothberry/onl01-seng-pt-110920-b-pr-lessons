class Api
  # Creates classmethods to interact with your api

  SW_URL             = 'https://swapi.dev/api/'
  SW_ENDPOINTS       = %W(people planets films species vehicles starship)
  LOTR_URL           = 'https://the-one-api.dev/v2/'
  XBOX_URL           = 'https://xbl.io/api/v2/'
  XBOX_API_KEY       = Dotenv.load["XBOX_API_KEY"]
  # search_query    = '/?search='

  # def self.get_films
  #   self.call_api(URL + 'films')
  # end

  # def self.get_people
  #   self.call_api(URL + 'people')
  # end

  def self.xbox_url
    XBOX_URL
  end

  # Api.const_get(:XBOX_API_KEY) # in console

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

  def self.get_gameclips
    # res["gameClips"][0]["gameClipUris"][0]["uri"]
    res = self.call_api_x_auth(XBOX_URL + "dvr/gameclips/")
    game_clips = res["gameClips"]

    game_clips.map do |clip, i|
      # clip_url = 
      {
        xuid:       clip["xuid"],
        gameClipId: clip["gameClipId"],
        clip:       clip["gameClipUris"][0]["uri"],
        
      }
    end
    # binding.pry
  end
 
  def self.call_api(url)
    # TODO use HTTParty to call api as a string
    # HTTParty.get(url)
    HTTParty.get(url, 
      headers: {
        "Authorization" => "Bearer <Token>"
      })

  end

  def self.call_api_x_auth(url)
    HTTParty.get(url,
      headers: {
        "X-Authorization" => XBOX_API_KEY,
        "Content-Type"    => "application/json"
      }
    )
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


