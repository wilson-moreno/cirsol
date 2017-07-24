class CreateContactStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :cirs_contact_statuses do |t|
      t.string :name
      t.text :description
      t.boolean :enabled
      t.boolean :modifiable
      t.boolean :pritable
      t.binary :icon
      t.boolean :countable

      t.timestamps
    end
  end
end
