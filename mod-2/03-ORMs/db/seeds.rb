# SEEDS
movie_data = [
  {
    "title": "Kiss Kiss, Bang, Bang",
    "genre": "Thriller",
    "actors": ["RDJ", "Val Kilmer", "Michelle Monaghan"]
  },
  {
    "title": "The Godfather",
    "genre": "Crime",
    "actors": ["Marlon Brando", "Al Pacino", "James Caan"]
  },
  {
    "title": "Scott Pilgrim",
    "genre": "Comic",
    "actors": ["Michael Cera", "Mary Elizabeth Winstead", "Kieran Culkin"]
  },
  {
    "title": "The Prestige",
    "genre": "Magic",
    "actors": ["Christian Bale", "Hugh Jackman", "Scarlett Johansson"]
  },
  {
    "title": "Deadpool",
    "genre": "Nonsense",
    "actors": ["Ryan Reynolds", "Morena Baccarin", "T.J. Miller"]
  }
]


# Creates new Movie objects

movie_data.each do |movie|
  Movie.new(movie).save
end