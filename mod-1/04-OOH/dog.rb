class  Dog
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def save
    @@all.push(self)
  end
  # Class Getter Method
  def self.all
    @@all
  end
  
  # Class Setter Method
  def self.all=(dogs)
    @@all = dogs
  end

end

dog = Dog.new("chauncy")

dogs = %W(eric phil chauncey)
p dog
p dog.name = 'eric'
p Dog.all
Dog.all = dogs
p Dog.all
