class Organ # belongs to a Human
  attr_accessor :name
  # Makes this Organ belong to one Human
  # human instance variable is the whole Human Obj
  attr_accessor :human

  @@all = []

  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def organ_failure(amount=10)
    # reduce the health of the related human by amount
    self.human.health -= amount
  end
  
end
