class AddColumnCaseIdToCompetition < ActiveRecord::Migration[5.0]
  def change
  	add_column :competitions, :case_id, :integer
  end
end
