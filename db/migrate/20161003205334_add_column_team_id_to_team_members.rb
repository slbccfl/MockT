class AddColumnTeamIdToTeamMembers < ActiveRecord::Migration[5.0]
  def change
  	add_column :team_members, :team_id, :integer
  end
end
