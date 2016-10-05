class RenameColumnTeamMemberToTeamMemberIdInRoles < ActiveRecord::Migration[5.0]
  def change
  	rename_column :roles, :team_member, :team_member_id
  end
end
