class RemoveColumnJudgeIdFromRounds < ActiveRecord::Migration[5.0]
  def change
  	remove_column :rounds, :judge_id, :integer
  end
end
