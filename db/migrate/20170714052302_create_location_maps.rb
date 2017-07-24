class CreateLocationMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :cirs_location_maps do |t|
      t.binary :image
      t.string :latitude
      t.string :longitude
      t.integer :width
      t.integer :height
      t.integer :scale
      t.integer :zoom
      t.string :image_format
      t.string :map_type
      t.string :marker_color
      t.integer :accuracy
      t.string :marker_label

      t.integer :contact_id 

      t.timestamps
    end
  end
end
