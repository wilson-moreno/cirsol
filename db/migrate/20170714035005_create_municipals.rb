class CreateMunicipals < ActiveRecord::Migration[5.0]
  def change
    create_table :cirs_municipals do |t|
      t.string :name
      t.string :short_name

      t.timestamps
    end
  end
end
