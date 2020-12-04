class Song
  attr_accessor :name, :artist, :genre

  @@all     = []
  @@count   = 0
  @@genres  = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@all << self
    @@count += 1
    @@artists.push(@artist)
    @@genres.push(@genre)
  end

  def self.all
    @@all
  end

  def self.count
    # self.all.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    # genre_hash = Hash.new
    # @@genres.each do | gen |
    #   genre_hash[gen] = @@genres.count(gen)
    # end
    # genre_hash

    gen_count = {}
    @@genres.map do |gen|
      if gen_count.has_key?(gen)
        gen_count += 1
      else
        gen_count[gen]
      end
    end
    gen_count
  end

  # @@genre_hash = Hash.new
  # def self.genre_count
  #   @@genres.each do |genre|
  #     @@genre_count[genre] = @@genres.count(genre)
  #   end
  #   @@genre_count
  # end 
end


