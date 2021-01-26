class ChangeAgeToArtists < ActiveRecord::Migration[5.2]
  def up
    change_column :artists, :age, :integer
  end
  
  def down
    change_column :artists, :age, :string
  end

end
