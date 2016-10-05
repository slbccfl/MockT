class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.integer :ballot_id
      t.integer :phase_id
      t.integer :role_id
      t.decimal :score

      t.timestamps
    end
  end
end
