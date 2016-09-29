class CreatePhases < ActiveRecord::Migration[5.0]
  def change
    create_table :phases do |t|
      t.integer :competition_id
      t.string :pTitle
      t.string :pScore1
      t.string :pScore2
      t.string :pScore3
      t.string :dTitle
      t.string :dScore1
      t.string :dScore2
      t.string :dScore3

      t.timestamps
    end
  end
end
