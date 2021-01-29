class Song < ActiveRecord::Base
  # Song belongs to an Album
  belongs_to :album
  belongs_to :artist

  # def album
  #   # .find => ActiveRecord method that returns one instance
  #   Album.find(self.album_id)
  # end

end