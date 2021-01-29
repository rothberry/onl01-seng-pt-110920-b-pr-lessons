class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      # t.column_type   :column_name, validation
      t.string    :name
      t.string    :year
      
      t.timestamps
    end
  end
end
