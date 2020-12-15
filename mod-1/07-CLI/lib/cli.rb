class CLI

  def start
    input = ''
    puts "Welcome To the Star Wars Database"
    menu
  end

  def prompt
    puts "Enter '1' to see a list of movies"
    puts "Enter '2' to see list of characters"
    puts "Enter '3' to search for movies by name"
    puts "Enter '4' to search for character by name"
    puts "Enter 'exit' to leave program"
  end

  def menu
    puts ''
    prompt
    puts ''
    input = gets.strip.downcase
    while input != 'exit'
      case input
      when '1'
        movies = Api.get_endpoint('films')
        movies["results"].each do |movie|
          display_movie(movie)
        end
        puts ''
        # binding.pry
      when '2'
        people = Api.get_endpoint('people')
        next_page_url = people["next"]
        # binding.pry
        people["results"].each do |person|
          display_person(person)
        end
        puts ''
        puts 'Would you like to see more? (y/n)'
        input = gets.strip.downcase
        while input != 'n'
          people = Api.call_api(next_page_url)
          next_page_url = people["next"]
          people["results"].each do |person|
            display_person(person)
          end  
          puts 'Would you like to see more? (y/n)'
          input = gets.strip.downcase
        end
      when '3'
        film_prompt
        input = gets.strip.downcase
        results = Api.search_endpoint('films', input)
        display_movie(results[0])
        # binding.pry
      when '4'
        people_prompt
        input = gets.strip.downcase
        results = Api.search_endpoint('people', input)
        display_person(results[0])
        # binding.pry
      when 'exit'
        goodbye
      else
        print_error
      end
      prompt
      input = gets.strip.downcase
    end
  end

  def display_movie(movie)
    episode_id    = movie["episode_id"]
    title         = movie["title"]
    opening_crawl = movie["opening_crawl"]
    puts "Episode: #{episode_id}\t#{title}"
    scroll_credits(opening_crawl)
  end

  def display_person_full(person)
    name = person["name"]
    films = person["films"]
    homeworld = Api.call_api(person["homeworld"])["name"]
    puts "Name:\t\t#{name}"
    puts "Films:\t\t#{films}"
    puts "HomeWorld:\t#{homeworld}"
  end
  
  def display_person(person)
    name = person["name"]
    puts "Name:\t#{name}"
  end

  def scroll_credits(crawl_str)
    crawl = crawl_str.split("\r\n")
    crawl.each do |line|
      puts line
      sleep(0.5)
    end
  end

  def people_prompt
    puts ''
    puts "Enter which person you are looking for"
  end

  def film_prompt
    puts ''
    puts "Enter which movie you are looking for"
  end

  def print_error
    puts ''
    puts 'Not sure what you meant there'
  end

  def goodbye
    puts "Seeya"
    exit
  end

end