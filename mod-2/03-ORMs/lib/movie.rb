class Movie

  attr_accessor :title, :genre, :year
  attr_reader   :id

  @@all = []

  # Mass Assignment
  def initialize(input_hash)
    # @id = input_hash["id"]
    # @title = input_hash["title"]
    # @genre = input_hash["genre"]
    # @year = input_hash["year@year"]

    input_hash.each do |key, val|
      # @key = val
      self.send("#{key}=", val)
    end
    # @id = input_hash["id"]
    # @@all << self
    # @id = @@all.count + 1
  end

  def self.create_table
    query = <<-DOC
      CREATE TABLE IF NOT EXISTS movies (
        id      INTEGER PRIMARY KEY,
        title   TEXT,
        genre   TEXT,
        year    INTEGER
      );
    DOC
    DB[:conn].execute(query)
  end

  def self.drop_table
    query = <<-DOC
      DROP TABLE IF EXISTS movies;
    DOC
    DB[:conn].execute(query)
  end
  
  def self.all
    @@all
  end

  def self.all_from_db
    # @@all
    query = <<-DOC
      SELECT * FROM movies;
    DOC
    data = DB[:conn].execute(query)
    # create new movie instances
    # data.map do |movie_hash|
    #   Movie.new(movie_hash)
    # end
  end

  def add_movie
    # @@all.push(self)
    query = <<-DOC
      INSERT INTO movies (title, genre, year)
      VALUES (?, ?, ?);
    DOC
    data = DB[:conn].execute(query, self.title, self.genre, self.year)
    # binding.pry
  end

  def self.find_by_title(title)
    # self.all.select do |movie|
    #   movie.title == title
    # end
    query = <<-DOC
      SELECT * FROM movies WHERE title = ?;
    DOC
    data = DB[:conn].execute(query, title)
  end

  def self.find_by_id(id)
    # self.all.find do |movie|
    #   movie.id == id
    # end
    query = <<-DOC
      SELECT * FROM movies WHERE id = ?;
    DOC
    data = DB[:conn].execute(query, id)
  end
  
  def self.delete_by_id(id)
    # self.all.delete_if do |movie|
    #   movie.id == id
    # end
    query = <<-SQL
    DELETE FROM movies WHERE id = ?;
    SQL
    data = DB[:conn].execute(query, id)
  end

end