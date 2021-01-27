class Artist < ActiveRecord::Base

  def songs
    # ? In Pure Ruby Land
    # Song.all.select do { |song| song.artist_id == self.id }
    # ? In ActiveRecordLand
    Song.where(artist_id: self.id)
  end
end