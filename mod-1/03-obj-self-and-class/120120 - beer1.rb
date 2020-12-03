=begin
  # * Live Lecture - Object Self and Class Variables/Methods

  # * DELIVERABLES

  # ! PREVIOUSLY ON:
  - Understand the macros for setters(writers) & getters(readers) & both together(accessor), and which macro to use
  - Understand the how the initialization of a class with the .new 
  - Understand how to create custom instance methods and how to call the method outside of the class
  - Understand the scope of methods
  - Introduction to the "self" keyword
  
  # ? AND NOW:
  - Continue learning and applying self
  - Implict vs Explict declarations
  - Solidify understanding of class vs instance
  - Learn about Private methods

=end

require 'pry'

def stars
  puts "*" * 99
end

class Beer

  puts "Outside self: #{self}"

  def self.show_class_method_self
    puts "Class self: #{self}"
  end

  def show_instance_method_self
    puts "Instance self: #{self}"
  end

  attr_accessor :name, :type, :size, :current_volume
 
  @@all_beers = []
  
  def initialize(name, type, size)
    @name = name
    @type = type
    @size = size
    @current_volume = size
    @@all_beers << self
  end
  
  # * CLASS METHODS
  # Ex: Beer.all
  def self.all
    @@all_beers
  end

  def self.show_all
    stars
    if @@all_beers.empty?
      puts "No beers"
    else
      @@all_beers.each do |beer|
        p beer
      end
    end
  end

  def self.clear_bar
    @@all_beers.clear
    puts "Bar is cleared"
  end

  def self.mass_pour(amount)
    # Want this to create x amount of new Beers
    amount.times do 
      # Beer.new("keg beer", "glass", 12)
      self.new("keg beer", "glass", 12)
    end
  end

  
  # * INSTANCE METHODS
  # ex: pbr.take_a_sip
  def take_a_sip(sips = 1)
    if @current_volume > sips
      @current_volume -= sips
      p "You've got #{@current_volume} oz left"
    else
      @current_volume = 0
      p "all done"
    end     
  end
  
  def refill(amount)
    if (amount + @current_volume > size)
      p "You've overflowed!"
      @current_volume = size
    else
      @current_volume += amount
    end
    p "Now you've got #{@current_volume} in your drank"
  end
  
  
  def making_drink
    make_drink
  end
  
  private
  # everything underneath is now a private method

  def make_drink
    puts 'a drink'
  end


end

# Initializing new Beer Objects
pbr =           Beer.new("pbr", "can", 12)
coors =         Beer.new("coors", "draft", 16)
oberon =        Beer.new("oberon", "draft", 24)
two_hearted =   Beer.new("two_hearted", "keg", 400)

# pbr.take_a_sip
# pbr.making_drink
# p Beer.class
# p pbr.class
# stars

# ? Executing methods on an Instance => Instance Methods
# pbr.take_a_sip(3)

# ? Executing methods on the whole Class => Class Methods
# Beer.show_all
# Beer.mass_pour(5)
# Beer.show_all
# Beer.clear_bar


# ? Self
# Beer.show_class_method_self
# pbr.show_instance_method_self
# oberon.show_instance_method_self

# binding.pry
