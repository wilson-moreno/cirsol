class CreateLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :cirs_languages do |t|
      t.string :name
      t.text :description
      t.string :short_name

      t.timestamps
    end
  end
end
