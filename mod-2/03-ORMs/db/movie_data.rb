module MovieData

  def self.data
  [
    {
      title: "Kiss Kiss, Bang, Bang",
      genre: "Thriller",
      year: 2005
    },
    {
      title: "The Godfather",
      genre: "Crime",
      year: 1972
    },
    {
      title: "Scott Pilgrim",
      genre: "Comic",
      year: 2010
    },
    {
      title: "The Prestige",
      genre: "Magic",
      year: 2006
    },
    {
      title: "Deadpool",
      genre: "Nonsense",
      year: 2016
    }
  ]
  end

  def self.seed(movie_array)
    movie_array.each do |movie_hash|
      movie = Movie.new(movie_hash)
      movie.add_movie_to_db
      movie.save
    end  
  end

end
