class RenameAgeToYearStarted < ActiveRecord::Migration[5.2]
  def up
    rename_column :artists, :age, :year_started
  end
  
  def down
    rename_column :artists, :year_started, :age
  end
end
