class CreateServiceGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :cirs_service_groups do |t|
      t.string :group_name

      t.integer :congregation_id
      t.integer :group_overseer_id
      t.integer :group_assistant_id   

      t.timestamps
    end
  end
end
