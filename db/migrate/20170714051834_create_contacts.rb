class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :cirs_contacts do |t|
      t.string :record_number
      t.date :record_date
      t.date :birthdate
      t.string :last_name
      t.string :first_name
      t.string :nick_name
      t.string :gender
      t.string :marital_status
      t.string :nationality
      t.binary :profile_picture
      t.string :house_number
      t.string :street_name
      t.string :subdivision
      t.string :barangay
      t.string :district
      t.text :personal_background
      t.text :family_background
      t.text :work_background
      t.string :phone_number
      t.string :mobile_number
      t.string :email_address
      t.string :skype_account
      t.string :facebook_account
      t.string :fathers_name
      t.string :mothers_name
      t.string :guardians_name
      t.string :postal_code
      t.string :zone

      t.integer :congregation_id
      t.integer :territory_id
      t.integer :service_group_id
      t.integer :municipal_id
      t.integer :province_id
      t.integer :religion_id
      t.integer :city_id
      t.integer :found_by
      t.integer :language_id
      t.integer :contact_status_id    

      t.timestamps
    end
  end
end
