class MovieNotORM

  attr_accessor :title, :genre, :year
  attr_reader   :id

  @@all = []

  # Mass Assignment
  def initialize(input_hash)
    input_hash.each do |key, val|
      # @key = val
      self.send("#{key}=", val)
    end
    @id = @@all.count + 1
    add_movie
  end
  
  def self.all
    @@all
  end

  def add_movie # save
    @@all.push(self)
  end

  def self.find_by_title(title)
    self.all.select do |movie|
      movie.title == title
    end
  end

  def self.find_by_id(id)
    self.all.find do |movie|
      movie.id == id
    end
  end
  
  def self.delete_by_id(id)
    self.all.delete_if do |movie|
      movie.id == id
    end
  end

end