class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.integer :round_id
      t.integer :team_member

      t.timestamps
    end
  end
end
