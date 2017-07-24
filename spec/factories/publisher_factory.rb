FactoryGirl.define do
   factory :publisher do
     first_name    Faker::Name.first_name
     last_name     Faker::Name.last_name
     mobile_number Faker::PhoneNumber.cell_phone
     email_address Faker::Internet.email
   end
end
