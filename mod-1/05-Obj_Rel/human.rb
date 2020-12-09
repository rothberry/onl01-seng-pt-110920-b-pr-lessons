require 'pry'
=begin
  # * Live Lecture - Object Relationships

  # * DELIVERABLES

  # ! PREVIOUSLY ON:
  - Tons of Object Orientated Ruby

  # ? AND NOW:
  - Defining object relationships
  - Implementing obj relationships

  # ! RELATIONSHIPS
  # * One to One Relationships
  Person belongs_to a Social Security Number
  Social Security Number belongs_to a Person

  # * One to Many Rel
  Museum has many Works of art
  Works belongs to a museum

  Customer has_many Orders
  Orders belongs_to a singular Customer

  # * Many to Many Rel
  Songs has_many Artists
  Artists has_many Songs
  Joiner inbetween

  # * Has_many_through
  Artists has_many Genres through Songs
  Genres has_many Artists through Songs
  Song belongs_to an Artist
  Song belongs_to a Genre


=end

def stars
  puts "*" * 99
end

# One to Many Relationship:
# Human has_many Organs
# an Organ belongs_to a Human

# require_relative './organ.rb'
class Human # has many Organs
  attr_accessor :name, :health

  @@all = []

  def initialize(name, health=100)
    @name = name
    @health = health
    @@all << self
  end

  def self.all
    @@all
  end

  def add_organ(organ)
    # use the Human instance to assign an organ to this person
    # organ arg => is an Organ instance
    organ.human = self
  end

  def add_organ_by_name(organ_name)
    # create a new Organ
    new_organ = Organ.new(organ_name)
    # then assign the new organ to this instance of Human
    add_organ(new_organ)
    return new_organ
  end

  def organs
    # list all the organs related to this instance
    Organ.all.select do |org|
      self == org.human
    end
  end
  
end

class Organ # belongs to a Human
  attr_accessor :name
  # Makes this Organ belong to one Human
  # human instance variable is the whole Human Obj
  attr_accessor :human

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

  def organ_failure(amount=10)
    # reduce the health of the related human by amount
    self.human.health -= amount
  end

  def find_or_create_human(name)
    # name => "string"
    # we will look through all humans for that name
    # if we find it
    # we will assign this organ to them
    # else we create a new human and assign it
    found_human = Human.all.find do |h|
      h.name == name
    end

    if found_human
      self.human = found_human
    else
      new_human = Human.new(name)
      self.human = new_human
    end
    # binding.pry
  end
  
end


# QUICK && DIRTY CONSOLE TESTING
phil = Human.new("phil")
hannah = Human.new("hannah")

phil_heart = Organ.new("heart")

hannah.add_organ_by_name("spleen")

phil.add_organ(phil_heart)
phil.add_organ_by_name("brain")

phil_heart.organ_failure(50)

phil.organs
hannah.organs

stomach = Organ.new('stomach')
stomach.find_or_create_human("phil")

liver = Organ.new('liver')
liver.find_or_create_human("dan")

binding.pry