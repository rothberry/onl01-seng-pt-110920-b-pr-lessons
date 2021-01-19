# SEEDS
movie_data = [
  {
    "title": "Kiss Kiss, Bang, Bang",
    "genre": "Thriller",
    "year": 2005
  },
  {
    "title": "The Godfather",
    "genre": "Crime",
    "year": 1972
  },
  {
    "title": "Scott Pilgrim",
    "genre": "Comic",
    "year": 2010
  },
  {
    "title": "The Prestige",
    "genre": "Magic",
    "year": 2006
  },
  {
    "title": "Deadpool",
    "genre": "Nonsense",
    "year": 2016
  }
]



# Creates new Movie objects

movie_data.each do |movie|
  Movie.new(movie).save
end