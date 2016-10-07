class AddColumnSideInRoles < ActiveRecord::Migration[5.0]
  def change
  	add_column :roles, :side, :string
  end
end
