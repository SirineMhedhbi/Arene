class AddExpToCharacters < ActiveRecord::Migration[7.0]
  def change
    add_column :characters, :exp, :integer, default: 0
  end
end
