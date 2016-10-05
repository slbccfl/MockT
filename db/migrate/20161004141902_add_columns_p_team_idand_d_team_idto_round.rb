class AddColumnsPTeamIdandDTeamIdtoRound < ActiveRecord::Migration[5.0]
  def change
  	add_column :rounds, :p_team_id, :integer
  	add_column :rounds, :d_team_id, :integer
  end
end
