FactoryGirl.define do
   factory :contact do
     record_number       Faker::Number.number(6)
     record_date         Faker::Date.between(2.days.ago, Date.today)
     birthdate           Faker::Date.birthday(12,65)
     last_name           Faker::Name.last_name
     first_name          Faker::Name.first_name
     nick_name           ""
     gender              ""
     marital_status      ""
     nationality         "Filipino"
     house_number        Faker::Number.number(3)
     street_name         Faker::Address.street_name
     subdivision         ""
     barangay            ""
     district            ""
     personal_background ""
     family_background   ""
     work_background     ""
     phone_number        Faker::PhoneNumber.phone_number
     mobile_number       Faker::PhoneNumber.cell_phone     
     email_address       Faker::Internet.email
     skype_account       ""
     facebook_account    ""
     fathers_name        Faker::Name.name
     mothers_name        Faker::Name.name
     guardians_name      Faker::Name.name
     postal_code         Faker::Address.postcode
     zone                ""     
   end
end
