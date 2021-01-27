class AddAgeToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :age, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    # ALTER TABLE
  end
end
