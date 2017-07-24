class CreateCircuits < ActiveRecord::Migration[5.0]
  def change
    create_table :cirs_circuits do |t|
      t.string :name
      t.string :short_name
      t.integer :circuit_overseer_id
      t.integer :language_id

      t.timestamps
    end
  end
end
