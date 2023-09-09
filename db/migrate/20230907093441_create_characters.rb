class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :hp
      t.integer :attack

      t.timestamps
    end
  end
end
