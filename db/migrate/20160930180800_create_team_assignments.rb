class CreateTeamAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :team_assignments do |t|
      t.integer :team_member_id
      t.integer :team_id

      t.timestamps
    end
  end
end
