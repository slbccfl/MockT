class CreateBallots < ActiveRecord::Migration[5.0]
  def change
    create_table :ballots do |t|
      t.integer :judge_id
      t.integer :competition_round_id

      t.timestamps
    end
  end
end
