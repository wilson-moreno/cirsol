class CreateCongregations < ActiveRecord::Migration[5.0]
  def change
    create_table :cirs_congregations do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :latitude
      t.integer :circuit_id
      t.integer :city_id
      t.integer :language_id

      t.timestamps
    end
  end
end
