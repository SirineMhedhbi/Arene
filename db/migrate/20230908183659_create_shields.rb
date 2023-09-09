class CreateShields < ActiveRecord::Migration[7.0]
  def change
    create_table :shields do |t|
      t.string :name
      t.float :damage_reduction

      t.timestamps
    end
  end
end
