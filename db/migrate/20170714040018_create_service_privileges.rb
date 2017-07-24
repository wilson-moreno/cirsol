class CreateServicePrivileges < ActiveRecord::Migration[5.0]
  def change
    create_table :cirs_service_privileges do |t|
      t.string :name
      t.text :description
      t.string :short_name

      t.timestamps
    end
  end
end
