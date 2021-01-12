

class Scraper


  def get_data
    url = 'https://www.beeradvocate.com/beer/top-rated/us/mi/'

    doc = Nokogiri::HTML(open(url))


  end


end