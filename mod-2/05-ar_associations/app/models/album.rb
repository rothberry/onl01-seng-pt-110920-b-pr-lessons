class Album < ActiveRecord::Base
  # Album belongs to an Artist
  belongs_to :artist

  # Album has many Songs
  has_many :songs
  # has_many :songs, class_name: "Song", foreign_key: "super_album_id"


  # def songs
  #   # .where => ActiveRecord method that returns all of the related instances
  #   Song.where(album_id: self.id)
  # end

  # def artist
  #   # ? In Pure Ruby Land
  #   # Artist.all.find do |artist|
  #   #   artist.id == self.artist_id
  #   # end 
  #   # ? In ActiveRecordLand
  #   Artist.find(self.artist_id)
  # end

end
