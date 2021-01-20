class Movie

  attr_accessor :title, :genre, :year
  attr_reader   :id

  @@all = []

  def initialize(args)
    self.title = args[:title]
    self.genre = args[:genre]
    self.year = args[:year]
    # args.each do |key, val|
    #   self.send("#{key}=", val)
    # end
    # @id = @@all.count + 1
  end

  def self.create_table
    sql = <<-DOC
      CREATE TABLE IF NOT EXISTS movies (
        id      INTEGER PRIMARY KEY,
        title   TEXT,
        genre   TEXT,
        year    INTEGER
      )
    DOC
    data = DB[:conn].execute(sql)
  end
  
  def self.drop_table
    sql = <<-DOC
      DROP TABLE movies
    DOC
    data = DB[:conn].execute(sql)
  end

  def self.all
    # ? NoDB
    # @@all
    # ? With DB
    sql = <<-DOC
      SELECT * FROM movies
    DOC
    data = DB[:conn].execute(sql)
  end

  def save
    # ? NoDB
    # @@all.push(self)
    
    # ? With DB
    insert_query = <<-SQL
      INSERT INTO movies (title, genre, year) VALUES (?, ?, ?)
    SQL

    DB[:conn].execute(insert_query, self.title, self.genre, self.year)

    select_query = <<-SQL
      SELECT id FROM movies WHERE title = ?
    SQL
    self.id = DB[:conn].execute(select_query, self.title).flatten[0]
  end
  
  def self.find_by_title(title)
    # ? NoDB
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