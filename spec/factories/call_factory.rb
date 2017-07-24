FactoryGirl.define do
   factory :call do
      call_date   Faker::Date.between(50.days.ago, Date.today)
      call_day    Faker::Date.forward(23).strftime("%A");
      call_time   Faker::Time.between(2.days.ago, Date.today, :all)
      scriptures  "Matthew 5:5"
      literature  "Good News From God"
      publishers  "AD/DG"
      notes       "Explain God's Kingdom"
   end
end
