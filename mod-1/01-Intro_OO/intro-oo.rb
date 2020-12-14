
class Beer
  # Macros:
  attr_accessor :name, :size, :flavor # => setter & gettern together
  # attr_reader :size
  # attr_writer :name
  # when we create a new instance of the class, we run this method first, and only once.
  def initialize(name, size)
    @name = name
    @size = size
    @flavor = "gooood"
    puts "I like beer"
  end

  # instance method!
  def drink_a_beer(beer)
    puts "mMmmMMm this #{beer} is goodz, but not as good as #{@name}!"
  end

  # # setter => writer
  # def name=(name)
  #   @name = name
  # end

  # # getter => reader
  # def name
  #   puts "the name of the beer is #{@name}"
  # end

end

# .new => first creates the instance, then runs Beer.initilaize
# beer1 = Beer.new
# beer1.name=("pbr")

beer1 = Beer.new("pbr", 12)

p beer1
p beer1.name # => .name is from @name == self.name
p beer1.size
p beer1.flavor
beer1.flavor = 'hoppy'
p beer1.flavor

beer1.drink_a_beer("molson")
# beer1.size = 16