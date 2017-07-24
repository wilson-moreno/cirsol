class CreateCallStatuses < ActiveRecord::Migration[5.0]

  def change
    create_table :cirs_call_statuses do |t|
      t.string :name
      t.string :description
      t.boolean :enabled

      t.timestamps
    end
  end
end
