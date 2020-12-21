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
    # gets.strip => takes user input from the console
    input = gets.strip
    # this is an infinite loop, unless the user exits
    # while input != 'exit'
      # case statement is 
      # if -> elsif -> elsif -> elsif -> else loop 
      # with one deciding variable
      # if    input == '1'
      # elsif input == '2'
      # elsif input == '3'
      # elsif input == '4'
      # elsif input == 'exit'
      # else
      # end

      case input
      when '1'
        # TODO List all movies(films endpoint)
        movies = Api.get_endpoint('films')
        movie_results = movies["results"]
        # iterate over this movies_results array
        # and display for the user
        movie_results.each do |movie|
          # print movie stuff
          display_movie(movie)
        end
        # binding.pry
      when '2'
        # TODO List all characters (10 per page)
        people = Api.get_endpoint('people')
        people_results = people["results"]
        
        people_results.each do |person|
          display_person(person)
        end
        # binding.pry
      when '3'
        film_prompt
        input = gets.strip.downcase
        # TODO Search for movies that match input
        movie_search = Api.search_endpoint('films', input)
        movie_search_results = movie_search["results"]
        movie_search_results.each do |movie|
          display_movie(movie)
        end
        # binding.pry
      when '4'
        people_prompt
        input = gets.strip.downcase
        # TODO Search for characters that match input
        people_search = Api.search_endpoint('people', input)
        people_search_results = people_search["results"]
        people_search_results.each do |person|
          display_person(person)
        end
        # binding.pry
      when 'exit'
        goodbye
      else
        # error handling
        print_error
      end
      # TODO Loop back to start
      menu # called recursively
      prompt
      input = gets.strip
    # end
  end

  def display_movie(movie)
    # TODO Use episode_id, title, and opening_crawl to display one movie
    title = movie["title"]
    episode_id = movie["episode_id"]
    director = movie["director"]
    opening_crawl = movie["opening_crawl"]
    puts "Episode #{episode_id}:\t#{title}"
    puts "Directed by: \t#{director}"
    scroll_credits(opening_crawl)
    puts ''
  end
  
  def display_person_full(person)
    # TODO Use name, films, homeworld, to display one character
    
  end
  
  def display_person(person)
    # TODO Just display person's name
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
    # return "exit"
  end

end