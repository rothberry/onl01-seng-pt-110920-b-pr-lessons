class Song < ActiveRecord::Base

  def artist
    # ? In Pure Ruby Land
    # Artist.all.find do |artist|
    #   artist.id == self.artist_id
    # end 
    # ? In ActiveRecordLand
    Artist.find(self.artist_id)
  end
end