class CreateBattles < ActiveRecord::Migration[7.0]
  def change
    create_table :battles do |t|
      t.integer :winner
      t.integer :loser

      t.timestamps
    end
  end
end
