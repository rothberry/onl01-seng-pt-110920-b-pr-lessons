class ChangeAgeToYearStartedOnArtists < ActiveRecord::Migration[5.2]
  def change
    rename_column :artists, :age, :year_started
  end
end
