=begin
  # * Live Lecture - Object Initialization & Object Properties

  # * DELIVERABLES

  # ! PREVIOUSLY ON:
  - Understand the macros for setters(writers) & getters(readers) & both together(accessor), and which macro to use
  - Understand the how the initialization of a class with the .new 
  - Understand how to create custom instance methods and how to call the method outside of the class

  # ? AND NOW:
  - Learning about scope of methods
  - Learn about class methods and variables
  - Introduction to the "self" keyword
  - Implict vs Explict declarations


=end

require 'pry'

def stars
  puts "*" * 99
end

class Beer

  # only available for the instance variables
  attr_accessor :name, :type, :size #, :num_of_beers

  # How many total beers have we poured??
  # for Class variables is @@
  # @@num_of_beers = 0
  @@all_beers = []
  # stars
  # p "Inside of the class and self: #{self}"
  
  def initialize(name, type, size)
    @name = name
    @type = type
    @size = size
    
    @current_volume = size
    
    # binding.pry
    # @@num_of_beers += 1
    @@all_beers << self
  end
  
  # CLASS METHODS
  # Beer.all
  def self.all
    @@all_beers
  end

  # INSTANCE METHODS
  def take_a_sip
    # stars
    # p "Inside of the take_a_sip and self: #{self}"
    # p ''

    i = 0
    while i < 4
      @current_volume -= 1
      p "is good beer,  and we've got #{@current_volume} oz left"
      i++
    end
  end

  def refill(amount)
    # takes in an amount (INT)
    # add error handling 
    if (amount + @current_volume > size)
      p "You've overflowed!"
      @current_volume = size
    else
      @current_volume += amount
    end
    p "Now you've got #{@current_volume} in your drank"
  end


end

pbr = Beer.new("pbr", "can", 12)

# p pbr
# p pbr.name
# p pbr.size

pbr.take_a_sip
# pbr.take_a_sip
# pbr.take_a_sip
# pbr.take_a_sip
# pbr.take_a_sip

# pbr.refill(3)

coors = Beer.new("coors", "draft", 16)
oberon = Beer.new("oberon", "draft", 24)

p Beer.all

# self.all            => self is Beer
# self.take_a_sip     => self is pbr




# kyhgaksfjhasljfhasf



# Initializing new Beer Objects
pbr =           Beer.new("pbr", "can", 12)
coors =         Beer.new("coors", "draft", 16)
oberon =        Beer.new("oberon", "draft", 24)
two_hearted =   Beer.new("two_hearted", "keg", 400)

# p Beer.class
# p pbr.class
# stars

# ? Executing methods on an Instance => Instance Methods
# pbr.take_a_sip
# pbr.take_a_sip(3)

# ? Executing methods on the whole Class => Class Methods
p Beer.all.count
Beer.mass_pour("bud light", "draft", 20, 20)
# Beer.close_bar
p Beer.all.count


# ? Self
# Beer.show_class_method_self
pbr.show_instance_method_self
# oberon.show_instance_method_self

binding.pry
