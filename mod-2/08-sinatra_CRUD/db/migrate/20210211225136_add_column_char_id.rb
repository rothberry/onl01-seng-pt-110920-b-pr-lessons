class AddColumnCharId < ActiveRecord::Migration
  def change
    add_column :weapons, :character_id, :integer
  end
end
