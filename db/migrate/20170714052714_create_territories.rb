class CreateTerritories < ActiveRecord::Migration[5.0]
  def change
    create_table :cirs_territories do |t|
      t.string :name
      t.string :description
      t.boolean :enabled
      t.binary :map_image
      t.string :direction
      t.string :marker_color

      t.integer :congregation_id
      t.integer :service_group_id

      t.timestamps
    end
  end
end
