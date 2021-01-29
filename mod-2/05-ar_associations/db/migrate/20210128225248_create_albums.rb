class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string    :title
      # create a foreign key for artist
      t.timestamps
    end
    
  end
end
