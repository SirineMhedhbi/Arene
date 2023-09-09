class AddForeignKeyToWeaponAndShield < ActiveRecord::Migration[7.0]
  def change
    add_column :weapons, :character_id, :integer
    add_column :shields, :character_id, :integer
    add_foreign_key :weapons, :characters, column: :character_id
    add_foreign_key :shields, :characters, column: :character_id
  end
end
