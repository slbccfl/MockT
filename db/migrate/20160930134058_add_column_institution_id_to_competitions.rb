class AddColumnInstitutionIdToCompetitions < ActiveRecord::Migration[5.0]
  def change
  	add_column :competitions, :institution_id, :integer
  end
end
