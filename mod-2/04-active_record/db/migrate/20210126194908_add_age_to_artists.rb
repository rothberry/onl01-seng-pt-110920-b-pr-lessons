class AddAgeToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :age, :integer
  end
end
