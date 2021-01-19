class Movie

  attr_accessor :title, :genre, :actors
  attr_reader   :id

  @@all = []

  def initialize(args)
    args.each do |key, val|
      self.send("#{key}=", val)
    end
    @id = @@all.count + 1
  end

  def self.all
    @@all
  end

  def save
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