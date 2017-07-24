class CreatePublishers < ActiveRecord::Migration[5.0]
  def change
    create_table :cirs_publishers do |t|
      t.string :first_name
      t.string :last_name
      t.string :mobile_number
      t.string :email_address

      t.integer :congregation_id
      t.integer :service_privilege_id
      t.integer :user_id

      t.timestamps
    end
  end
end
