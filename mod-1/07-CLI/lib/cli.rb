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
        # TODO List all movies
        # binding.pry
      when '2'
        # TODO List all characters (10 per page)
        # binding.pry
      when '3'
        film_prompt
        input = gets.strip.downcase
        # TODO Search for movies that match input
        # binding.pry
      when '4'
        people_prompt
        input = gets.strip.downcase
        # TODO Search for characters that match input
        # binding.pry
      when 'exit'
        goodbye
      else
        print_error
      end
      # TODO Loop back to start
    end
  end

  def display_movie(movie)
    # TODO Use episode_id, title, and opening_crawl to display one movie
    
  end
  
  def display_person_full(person)
    # TODO Use name, films, homeworld, to display one character
    
  end
  
  def display_person(person)
    # TODO Just display person's name

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