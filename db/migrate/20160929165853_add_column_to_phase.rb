class AddColumnToPhase < ActiveRecord::Migration[5.0]
  def change
  	add_column :phases, :order, :integer
  end
end
