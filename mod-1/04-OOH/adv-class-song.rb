require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
    # self.class.all << self
  end

  # @name => self.name
  # @@all => self.class.all
  
  # Diffence between .new & .create
  # .new    => makes a new instance, but does not save to @@all
  # .create => makes a new instance, and then saves to @@all

  def self.create
    new_song = self.new
    new_song.save
    return new_song
  end

  def self.new_by_name(song_name)
    new_song = self.new
    new_song.name = song_name
    return new_song
  end
  
  def self.create_by_name(song_name)
    # new_song = self.new
    # new_song.name = song_name
    # new_song.save
    # return new_song
    # * is the same as
    new_song = self.new_by_name(song_name)
    new_song.save
    return new_song
  end


end

