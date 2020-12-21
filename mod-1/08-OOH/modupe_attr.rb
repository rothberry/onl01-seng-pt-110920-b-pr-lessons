require 'pry'
class Person

  attr_writer     :name
  attr_reader     :name, :age
  # attr_accessor   #:name

  # ?Class Constants  => CAPITALIZED
  # are not meant to be changed
  WINNING_COMBO = []
  API_KEY = ''
  API_URL = ''
  CONST = [1,2,3,4]

  # ?Class variables   => @@all
  # variables that can and will change
  @@all           = []
  self.class.all  = []

  # ? Start with the accessor
  # then remove setter or getter if the user doesn't use it.

  # name
  # age
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
    CONST << 1
    # binding.pry
  end

  def self.all
    @@all
  end

  def self.const
    CONST
  end

  def self.all=(x)
    @@all = x
  end

  def increase_age(x)
    # increase the age by x
    @age += x
  end

  # Setter => attr_writer
  # methods that the user can use
  # name=(name) => name = string
  # def name=(name)
  #   p 'inside setter'
  #   @name = name
  # end
  
  # Getter => attr_reader
  # def name
  #   p 'inside getter'
  #   @name
  # end

end

p = Person.new('phil', 29)

binding.pry