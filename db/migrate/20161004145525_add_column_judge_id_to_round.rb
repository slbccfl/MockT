class AddColumnJudgeIdToRound < ActiveRecord::Migration[5.0]
  def change
  	add_column :rounds, :judge_id, :integer
  end
end
