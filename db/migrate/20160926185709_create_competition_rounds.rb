class CreateCompetitionRounds < ActiveRecord::Migration[5.0]
  def change
    create_table :competition_rounds do |t|
      t.string :number
      t.integer :competition_id

      t.timestamps
    end
  end
end
