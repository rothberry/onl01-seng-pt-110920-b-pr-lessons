class Movie # as an ORM

  attr_accessor :title, :genre, :year, :id

  @@all = []

  def initialize(input_hash)
    @title  = input_hash["title"]   || input_hash[:title] 
    @genre  = input_hash["genre"]   || input_hash[:genre]
    @year   = input_hash["year"]    || input_hash[:year]
    @id     = input_hash["id"]      || input_hash[:id]
  end

  # Local Methods
  def self.all
    @@all
  end

  def save
    @@all.push(self)
  end

  def self.set_local_db
    data = self.all_from_db
    data.each do |movie|
      self.new(movie).save
    end
  end

  # ORM SQL Methods
  def self.create_table
    query = <<-SQL
      CREATE TABLE IF NOT EXISTS movies (
        id      INTEGER PRIMARY KEY,
        title   TEXT,
        genre   TEXT,
        year    INTEGER
      );
    SQL
    DB[:conn].execute(query)
  end

  def self.drop_table
    query = <<-SQL
      DROP TABLE IF EXISTS movies;
    SQL
    DB[:conn].execute(query)
  end

  def self.all_from_db
    # @@all
    query = <<-SQL
      SELECT * FROM movies;
    SQL
    data = DB[:conn].execute(query)
  end

  def add_movie_to_db
    # @@all.push(self)
    insert_query = <<-SQL
      INSERT INTO movies (title, genre, year)
      VALUES (?, ?, ?);
    SQL
    DB[:conn].execute(insert_query, self.title, self.genre, self.year)
    self.id = DB[:conn].last_insert_row_id
  end

  def self.find_by_id(id)
    # self.all.find { |movie| movie.id == id }
    query = <<-SQL
      SELECT * FROM movies WHERE id = ?;
    SQL
    data = DB[:conn].execute(query, id)
  end

  def self.find_by_title(title)
    # self.all.find { |movie| movie.title == title }
    query = <<-SQL
      SELECT * FROM movies WHERE title = ?;
    SQL
    data = DB[:conn].execute(query, title)
  end

  def self.update_title(title, id)
    update_query = <<-SQL
      UPDATE movies SET title = ? WHERE id = ? ;
    SQL
    DB[:conn].execute(update_query, title, id)

    select_query = <<-SQL
      SELECT title FROM movies WHERE id = ? ;
    SQL
    new_title = DB[:conn].execute(select_query, id)[0]["title"]

    movie = self.all.find { |x| x.id == id }
    movie.title = new_title
    movie
  end
  
  def self.delete_by_id(id)
    # self.all.delete_if { |movie| movie.id == id }
    query = <<-SQL
      DELETE FROM movies WHERE id = ?;
    SQL
    data = DB[:conn].execute(query, id)
  end

end