class CreateTeamMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :team_members do |t|
      t.string :firstName
      t.string :lastName

      t.timestamps
    end
  end
end
