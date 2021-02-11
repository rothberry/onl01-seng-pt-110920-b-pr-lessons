class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      # t.string :weapon
      t.string :race
    end
  end
end
