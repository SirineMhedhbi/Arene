class AddCharacterIdToCharacters < ActiveRecord::Migration[7.0]
  def change
    add_column :characters, :character_id, :integer
  end
end
