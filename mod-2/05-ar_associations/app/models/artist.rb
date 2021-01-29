class Artist < ActiveRecord::Base
  # Artist has many albums
  has_many :albums
  
  # Artist has many Songs though Albums
  has_many :songs, through: :albums


  # def albums
  #   # ? In Pure Ruby Land
  #   # Album.all.select do { |song| song.artist_id == self.id }
  #   # ? In ActiveRecordLand
  #   Album.where(artist_id: self.id)
  # end

  # # setter 
  # def name=(name)
  #   @name = name
  # end
  # # => 
  # attr_writer
end