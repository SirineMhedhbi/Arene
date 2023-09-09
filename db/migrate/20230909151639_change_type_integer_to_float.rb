class ChangeTypeIntegerToFloat < ActiveRecord::Migration[7.0]
  def change
    change_column :characters, :hp, :float
    change_column :characters, :attack, :float
    change_column :characters, :exp, :float
    change_column :weapons, :damage, :float
  end
end
