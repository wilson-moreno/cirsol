class CreateCalls < ActiveRecord::Migration[5.0]
  def change
    create_table :cirs_calls do |t|
      t.date :call_date
      t.string :call_day
      t.string :call_time
      t.string :scriptures
      t.string :literature
      t.string :publishers
      t.text :notes
      t.integer :contact_id
      t.integer :call_status_id	

      t.timestamps
    end
  end
end
